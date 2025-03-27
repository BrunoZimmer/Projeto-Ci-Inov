/*!\file testbench.sv
 * RS5 VERSION - 1.1.0 - Pipeline Simplified and Core Renamed
 *
 * Distribution:  October 2023
 *
 * Willian Nunes    <willian.nunes@edu.pucrs.br>
 * Angelo Dal Zotto <angelo.dalzotto@edu.pucrs.br>
 *
 * Research group: GAPH-PUCRS  <>
 *
 * \brief
 * Testbench for RS5 simulation.
 *
 * \detailed
 * Testbench for RS5 simulation.de
 */

//  set LOCAL_PATH [pwd]
//  `include "../rtl/RS5_pkg.sv"
 `include "/home/ic/bruno.zimmer/Documents/Projeto/RS5-v2.2/rtl/RS5_pkg.sv"
 

 //////////////////////////////////////////////////////////////////////////////
 // CPU TESTBENCH
 //////////////////////////////////////////////////////////////////////////////
 
 module testbench
     import RS5_pkg::*;
 (
 );
     timeunit 1ns; timeprecision 1ns;
 
 //////////////////////////////////////////////////////////////////////////////
 // PARAMETERS FOR CORE INSTANTIATION
 //////////////////////////////////////////////////////////////////////////////
 
     localparam mul_e         MULEXT          = MUL_M;
     localparam atomic_e      AMOEXT          = AMO_A;
     localparam bit           COMPRESSED      = 1'b1;
     localparam bit           USE_XOSVM       = 1'b0;
     localparam bit           USE_ZIHPM       = 1'b1;
     localparam bit           USE_ZKNE        = 1'b1;
     localparam bit           VEnable         = 1'b0;
     localparam int           VLEN            = 256;
     localparam bit           BRANCHPRED      = 1'b1;
 
 `ifndef SYNTH
     localparam bit           PROFILING       = 1'b1;
     localparam bit           DEBUG           = 1'b0;
 `endif
 
     localparam int           MEM_WIDTH       = 65_536;
     localparam string        BIN_FILE        = "/home/ic/bruno.zimmer/Documents/Projeto/RS5-v2.2/app/fft_test/fft_test.bin";
     
     localparam int           i_cnt = 1;
 
 ///////////////////////////////////////// Clock generator //////////////////////////////
 
     logic        clk=1;
 
     always begin
         #5.0 clk <= 0;
         #5.0 clk <= 1;
     end
 
 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////////////////////////////////////////////// RESET CPU ////////////////////////////////////////////////////////////////////////////////////
 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 
     logic reset_n;
 
     initial begin
         reset_n = 0;                                          // RESET for CPU initialization
         
 
         #100 reset_n = 1;                                     // Hold state for 100 ns
     end
 
 //////////////////////////////////////////////////////////////////////////////
 // TB SIGNALS
 //////////////////////////////////////////////////////////////////////////////
 
     /* Number of used bits is defined by the memory size */
     /* verilator lint_off UNUSEDSIGNAL */
     logic [31:0]            instruction_address;
     /* verilator lint_on UNUSEDSIGNAL */
 
     /* RTC is 64 bits but the bus is 32 bits */
     /* verilator lint_off UNUSEDSIGNAL */
     logic [63:0]            data_rtc;
     /* verilator lint_on UNUSEDSIGNAL */
 
     logic                   interrupt_ack;
     logic [63:0]            mtime;
     logic [31:0]            instruction;
     logic                   enable_ram, enable_rtc, enable_plic, enable_tb;
     logic                   mem_operation_enable;
     logic [31:0]            mem_address, mem_data_read, mem_data_write;
     logic [3:0]             mem_write_enable;
     byte                    char;
     logic [31:0]            data_ram, data_plic, data_tb;
     logic                   enable_tb_r, enable_rtc_r, enable_plic_r;
     logic                   mti, mei;
     logic [31:0]            irq;

     logic                   accel_en;
 
     assign irq = {20'h0, mei, 3'h0, mti, 7'h0};
 
 //////////////////////////////////////////////////////////////////////////////
 // Control
 //////////////////////////////////////////////////////////////////////////////
 
     always_comb begin
         if (mem_operation_enable) begin
             if (mem_address[31:28] < 4'h2) begin
                 enable_ram  = 1'b1;
                 enable_rtc  = 1'b0;
                 enable_plic = 1'b0;
                 enable_tb   = 1'b0;
             end
             else if (mem_address[31:28] < 4'h3) begin
                 enable_ram  = 1'b0;
                 enable_rtc  = 1'b1;
                 enable_plic = 1'b0;
                 enable_tb   = 1'b0;
             end
             else if (mem_address[31:28] < 4'h8) begin
                 enable_ram  = 1'b0;
                 enable_rtc  = 1'b0;
                 enable_plic = 1'b1;
                 enable_tb   = 1'b0;
             end
             else begin
                 enable_ram  = 1'b0;
                 enable_rtc  = 1'b0;
                 enable_plic = 1'b0;
                 enable_tb   = 1'b1;
             end
         end
         else begin
             enable_ram  = 1'b0;
             enable_rtc  = 1'b0;
             enable_plic = 1'b0;
             enable_tb   = 1'b0;
         end
     end
 
     always_ff @(posedge clk) begin
         enable_tb_r     <= enable_tb;
         enable_rtc_r    <= enable_rtc;
         enable_plic_r   <= enable_plic;
     end
 
     always_comb begin
         if (enable_tb_r) begin
             mem_data_read = data_tb;
         end
         else if (enable_rtc_r) begin
             mem_data_read = data_rtc[31:0];
         end
         else if (enable_plic_r) begin
             mem_data_read = data_plic;
         end
         else begin
             mem_data_read = data_ram;
         end
     end
 
 //////////////////////////////////////////////////////////////////////////////
 // RAM
 //////////////////////////////////////////////////////////////////////////////
 
     RAM_mem #(
     `ifndef SYNTH
         .DEBUG     (DEBUG     ),
         .DEBUG_PATH("../sim/debug/"),
     `endif
         .MEM_WIDTH(MEM_WIDTH  ),
         .BIN_FILE (BIN_FILE   )
     ) RAM_MEM (
         .clk        (clk),
 
         .enA_i      (1'b1),
         .file_weA_i (1'b0),
         .weA_i      (4'h0),
         .addrA_i    (instruction_address[($clog2(MEM_WIDTH) - 1):0]),
         .dataA_i    (32'h00000000),
         .dataA_o    (instruction),
 
         .enB_i      (enable_ram),
         .weB_i      (mem_write_enable),
         .addrB_i    (mem_address[($clog2(MEM_WIDTH) - 1):0]),
         .dataB_i    (mem_data_write),
         .dataB_o    (data_ram)
     );
 
 //////////////////////////////////////////////////////////////////////////////
 // PLIC
 //////////////////////////////////////////////////////////////////////////////
 
     /* Bits depending on connected peripherals */
     /* verilator lint_off UNUSED */
     logic [i_cnt:1] iack_periph;
     /* verilator lint_on UNUSED */
 
     plic #(
         .i_cnt(i_cnt)
     ) plic1 (
         .clk     (clk),
         .reset_n (reset_n),
         .en_i    (enable_plic),
         .we_i    (mem_write_enable),
         .addr_i  (mem_address[23:0]),
         .data_i  (mem_data_write),
         .data_o  (data_plic),
         .irq_i   ('0),
         .iack_i  (interrupt_ack),
         .iack_o  (iack_periph),
         .irq_o   (mei)
     );
 
 //////////////////////////////////////////////////////////////////////////////
 // RTC
 //////////////////////////////////////////////////////////////////////////////
 
     rtc rtc(
         .clk        (clk),
         .reset_n    (reset_n),
         .en_i       (enable_rtc),
         .addr_i     (mem_address[3:0]),
         .we_i       ({4'h0, mem_write_enable}),
         .data_i     ({32'h0, mem_data_write}),
         .data_o     (data_rtc),
         .mti_o      (mti),
         .mtime_o    (mtime)
     );
 
 //////////////////////////////////////////////////////////////////////////////
 // Memory Mapped regs
 //////////////////////////////////////////////////////////////////////////////
 
     always_ff @(posedge clk) begin
        if (enable_tb) begin
            // OUTPUT REG
            if ((mem_address == 32'h80004000 || mem_address == 32'h80001000) && mem_write_enable != '0) begin
                char <= mem_data_write[7:0];
                $write("%c",char);
                $fflush();
            end
            else if (mem_address == 32'h80002000 && mem_write_enable != '0) begin
                $write("%0d\n",mem_data_write);
                $fflush();
            end
            // END REG
            if (mem_address == 32'h80000000 && mem_write_enable != '0) begin
                $display("# %t END OF SIMULATION",$time);
                $finish;
            end
        end
        else begin
            data_tb <= '0;
        end
    end
 

 
 //////////////////////////////////////////////////////////////////////////////
 // RAM
 //////////////////////////////////////////////////////////////////////////////
 
    
    logic                enable_ram_fft_initial, reset;
    logic                mem_write_enable_fft_initial;
    logic [31:0]         ram_address_in_fft_initial;
    logic [31:0]         fft_ram_in;
    logic [31:0]         fft_ram_out_r;
    logic [31:0]         fft_ram_out_i;


    localparam string    FFT_INPUT_IMAG       = "../sim/Test_cases/IN_imag_pattern05.txt";
    localparam string    FFT_INPUT_REAL       = "../sim/Test_cases/IN_real_pattern05.txt";
    
    logic                           enable_ram_fft_runtime ;
    logic                           mem_write_enable_fft_runtime;
    logic [31:0]                    ram_address_in_fft_runtime;
    
    initial begin
        integer fd, ret;
        integer addr_counter, i;
        reg signed [31:0] value;  
        
        reset = 1;            // RESET for FFT initialization 
        #100 reset = 0;         
        
        for (i = 0; i < 2; i = i + 1) begin
            enable_ram_fft_initial    = 1'b0;
            mem_write_enable_fft_initial = 1'h0;
            ram_address_in_fft_initial = 32'b0;
            fft_ram_in        = 32'b0;
            addr_counter        = 0;
            
            #10;
            @(posedge clk);
            
            if( i == 0)begin
                fd = $fopen(FFT_INPUT_REAL, "r");
                $display("Real input read");
            end 
            if (i==1) begin
                fd = $fopen(FFT_INPUT_IMAG, "r");
                $display("Imag input read");
            end
            if (fd == 0) begin
                $display("ERROR: Não foi possível abrir o arquivo IN_imag_pattern05.txt");
                $finish;
            end
            
            while (!$feof(fd)) begin
                ret = $fscanf(fd, "%d\n", value);  
                if (ret != 1) begin
                    $display("Aviso: leitura inválida (ret = %0d) no arquivo", ret);
                    break;
                end
                
                // Configura os sinais para a escrita:
                if(addr_counter == 0)
                    ram_address_in_fft_initial    = i;         
                else
                    ram_address_in_fft_initial    = addr_counter + i;         

                fft_ram_in                    = value[31:0];           
                mem_write_enable_fft_initial  = 1'b1;                 
                enable_ram_fft_initial        = 1'b1;               
                
                
                @(posedge clk);
                
                
                mem_write_enable_fft_initial = 1'b0;
                enable_ram_fft_initial    = 1'b0;
                
                addr_counter = addr_counter + 2;
            end
            $fclose(fd);
        end

        ram_address_in_fft_initial = 32'b0;
        enable_ram_fft_initial    = 1'b1;
        
        $display("Finalizado o carregamento do arquivo na RAM.\nTotal de palavras escritas: %0d\n", addr_counter);
        
    end
    


    ////////////////////////////////////////////////////////////////////////////
    //  FFT ACCELERATOR
    ////////////////////////////////////////////////////////////////////////////
    
    // FFT VARIABLES
    parameter IN_width		= 12;
    parameter OUT_width		= 16;
    logic reset_runtime;
    logic                           accel_out_en;      // 1  bits
    logic        [OUT_width-1:0]    accel_dout_r;      // 16 bits
    logic        [OUT_width-1:0]    accel_dout_i;       // 16 bits

    logic                           out_valid;
    logic signed [IN_width-1:0]     din_r;
    logic        [IN_width-1:0]     din_i;

    logic                           clk_fft;
    logic        [5:0]              cycle_count; // Contador de ciclos


    always_comb begin
        clk_fft = clk;   
        if (accel_en) begin
            assign din_r = fft_ram_out_r[IN_width-1:0];
        end 
    end
    
    always_ff @(posedge clk) begin
        // if ($time >0) begin
        if (accel_en) begin
            reset_runtime = 0;
            enable_ram_fft_runtime = 1'b1;
            
        end else begin
            reset_runtime = 1;
            enable_ram_fft_runtime <= 1'b0;
        end


        if (reset_runtime) begin
            enable_ram_fft_runtime <= 1'b0;
            ram_address_in_fft_runtime <= 32'b0;
        end 
        
    end
    
    logic   [31:0]  ram_address_in_fft;
    assign ram_address_in_fft = ram_address_in_fft_initial | ram_address_in_fft_runtime;
    assign enable_ram_fft = enable_ram_fft_initial | enable_ram_fft_runtime;
    
    logic rst;
    assign rst = reset | reset_runtime;

    
    
// FFT DECLARATION
    parameter N = 16;
	parameter Q = 8;
	
	// logic					clk2;
   	logic                 out_en;
	
    logic		[N-1:0]		out0_r;
	logic		[N-1:0]		out0_i;	
	logic		[N-1:0]		out1_r;
	logic		[N-1:0]		out1_i;
	logic		[N-1:0]		out2_r;
	logic		[N-1:0]		out2_i;
	logic		[N-1:0]		out3_r;
	logic		[N-1:0]		out3_i;
	logic		[N-1:0]		out4_r;
	logic		[N-1:0]		out4_i;	
	logic		[N-1:0]		out5_r;
	logic		[N-1:0]		out5_i;
	logic		[N-1:0]		out6_r;
	logic		[N-1:0]		out6_i;
	logic		[N-1:0]		out7_r;
	logic		[N-1:0]		out7_i;
	logic		[N-1:0]		out8_r;
	logic		[N-1:0]		out8_i;
	logic		[N-1:0]		out9_r;
	logic		[N-1:0]		out9_i;
	logic		[N-1:0]		out10_r;
	logic		[N-1:0]		out10_i;	
	logic		[N-1:0]		out11_r;
	logic		[N-1:0]		out11_i;
	logic		[N-1:0]		out12_r;
	logic		[N-1:0]		out12_i;
	logic		[N-1:0]		out13_r;
	logic		[N-1:0]		out13_i;
	logic		[N-1:0]		out14_r;
	logic		[N-1:0]		out14_i;
	logic		[N-1:0]		out15_r;
	logic		[N-1:0]		out15_i;
	logic		[N-1:0]		out16_r;
	logic		[N-1:0]		out16_i;	
	logic		[N-1:0]		out17_r;
	logic		[N-1:0]		out17_i;
	logic		[N-1:0]		out18_r;
	logic		[N-1:0]		out18_i;
	logic		[N-1:0]		out19_r;
	logic		[N-1:0]		out19_i;
	logic		[N-1:0]		out20_r;
	logic		[N-1:0]		out20_i;
	logic		[N-1:0]		out21_r;
	logic		[N-1:0]		out21_i;
	logic		[N-1:0]		out22_r;
	logic		[N-1:0]		out22_i;	
	logic		[N-1:0]		out23_r;
	logic		[N-1:0]		out23_i;
	logic		[N-1:0]		out24_r;
	logic		[N-1:0]		out24_i;
	logic		[N-1:0]		out25_r;
	logic		[N-1:0]		out25_i;
	logic		[N-1:0]		out26_r;
	logic		[N-1:0]		out26_i;
	logic		[N-1:0]		out27_r;
	logic		[N-1:0]		out27_i;
	logic		[N-1:0]		out28_r;
	logic		[N-1:0]		out28_i;	
	logic		[N-1:0]		out29_r;
	logic		[N-1:0]		out29_i;
	logic		[N-1:0]		out30_r;
	logic		[N-1:0]		out30_i;
	logic		[N-1:0]		out31_r;
	logic		[N-1:0]		out31_i;


 
 //////////////////////////////////////////////////////////////////////////////
 // CPU
 //////////////////////////////////////////////////////////////////////////////
 
    // #(
    //     `ifndef SYNTH
    //         .DEBUG      (DEBUG          ),
    //         .PROFILING  (PROFILING      ),
    //     `endif
    //         .Environment(ASIC           ),
    //         .MULEXT     (MULEXT         ),
    //         .AMOEXT     (AMOEXT         ),
    //         .COMPRESSED (COMPRESSED     ),
    //         .VEnable    (VEnable        ),
    //         .VLEN       (VLEN           ),
    //         .XOSVMEnable(USE_XOSVM      ),
    //         .ZIHPMEnable(USE_ZIHPM      ),
    //         .ZKNEEnable (USE_ZKNE       ),
    //         .BRANCHPRED (BRANCHPRED     )
    //     ) 
    RS5 dut (
            .clk                    (clk),
            .reset_n                (reset_n),
            .sys_reset_i            (1'b0),
            .stall                  (1'b0),
            .instruction_i          (instruction),
            .mem_data_i             (mem_data_read),
            .mtime_i                (mtime),
            .irq_i                  (irq),
            .instruction_address_o  (instruction_address),
            .mem_operation_enable_o (mem_operation_enable),
            .mem_write_enable_o     (mem_write_enable),
            .mem_address_o          (mem_address),
            .mem_data_o             (mem_data_write),
            .interrupt_ack_o        (interrupt_ack),
            .accel_en               (accel_en),


            .rst                    (rst),
            .out_en                 (out_en),
            
            .out0_r                 (out0_r),
            .out0_i                 (out0_i),	
            .out1_r                 (out1_r),
            .out1_i                 (out1_i),
            .out2_r                 (out2_r),
            .out2_i                 (out2_i),
            .out3_r                 (out3_r),
            .out3_i                 (out3_i),
            .out4_r                 (out4_r),
            .out4_i                 (out4_i),	
            .out5_r                 (out5_r),
            .out5_i                 (out5_i),
            .out6_r                 (out6_r),
            .out6_i                 (out6_i),
            .out7_r                 (out7_r),
            .out7_i                 (out7_i),
            .out8_r                 (out8_r),
            .out8_i                 (out8_i),
            .out9_r                 (out9_r),
            .out9_i                 (out9_i),
            .out10_i                (out10_i),	
            .out10_r                (out10_r),
            .out11_r                (out11_r),
            .out11_i                (out11_i),
            .out12_r                (out12_r),
            .out12_i                (out12_i),
            .out13_r                (out13_r),
            .out13_i                (out13_i),
            .out14_r                (out14_r),
            .out14_i                (out14_i),
            .out15_r                (out15_r),
            .out15_i                (out15_i),
            .out16_r                (out16_r),
            .out16_i                (out16_i),	
            .out17_r                (out17_r),
            .out17_i                (out17_i),
            .out18_r                (out18_r),
            .out18_i                (out18_i),
            .out19_r                (out19_r),
            .out19_i                (out19_i),
            .out20_r                (out20_r),
            .out20_i                (out20_i),
            .out21_r                (out21_r),
            .out21_i                (out21_i),
            .out22_r                (out22_r),
            .out22_i                (out22_i),	
            .out23_r                (out23_r),
            .out23_i                (out23_i),
            .out24_r                (out24_r),
            .out24_i                (out24_i),
            .out25_r                (out25_r),
            .out25_i                (out25_i),
            .out26_r                (out26_r),
            .out26_i                (out26_i),
            .out27_r                (out27_r),
            .out27_i                (out27_i),
            .out28_r                (out28_r),
            .out28_i                (out28_i),	
            .out29_r                (out29_r),
            .out29_i                (out29_i),
            .out30_r                (out30_r),
            .out30_i                (out30_i),
            .out31_r                (out31_r),
            .out31_i                (out31_i),

            .en_i        (enable_ram_fft),
            .we_i        (mem_write_enable_fft_initial),
            .addr_i      (ram_address_in_fft),
            .data_i      (fft_ram_in)
        );
	
    // assign mem_data_write = (out_en) ? out_accel : mem_data_write

endmodule