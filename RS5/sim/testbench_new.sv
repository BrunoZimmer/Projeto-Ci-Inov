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

 `include "../rtl/RS5_pkg.sv"

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
     localparam string        BIN_FILE        = "../app/fft_test/fft_test.bin";
 
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

     logic   [31:0]          accel_input;
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
 // CPU
 //////////////////////////////////////////////////////////////////////////////
 
     RS5 #(
     `ifndef SYNTH
         .DEBUG      (DEBUG          ),
         .PROFILING  (PROFILING      ),
     `endif
         .Environment(ASIC           ),
         .MULEXT     (MULEXT         ),
         .AMOEXT     (AMOEXT         ),
         .COMPRESSED (COMPRESSED     ),
         .VEnable    (VEnable        ),
         .VLEN       (VLEN           ),
         .XOSVMEnable(USE_XOSVM      ),
         .ZIHPMEnable(USE_ZIHPM      ),
         .ZKNEEnable (USE_ZKNE       ),
         .BRANCHPRED (BRANCHPRED     )
     ) dut (
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
         .accel_input             (accel_input),
         .accel_en                (accel_en)
     );
 
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
 
    
    logic                enable_ram_fft;
    logic                mem_write_enable_fft;
    logic [31:0]         fft_ram_address_in;
    logic [31:0]         fft_ram_in;
    logic [31:0]         fft_ram_out_r;
    logic [31:0]         fft_ram_out_i;


    localparam string    FFT_INPUT_IMAG       = "../sim/Test_cases/IN_imag_pattern05.txt";
    localparam string    FFT_INPUT_REAL       = "../sim/Test_cases/IN_real_pattern05.txt";
    
    // Lógica de controle para ler o arquivo e escrever os valores na RAM pela porta B
    initial begin
        integer fd, ret;
        integer addr_counter, i;
        // Usamos um registrador com sinal para comportar números negativos
        reg signed [31:0] value;  
        
        // Inicializa os sinais de controle da porta B
        for (i = 0; i < 2; i = i + 1) begin
            enable_ram_fft    = 1'b0;
            mem_write_enable_fft = 1'h0;
            fft_ram_address_in = 32'd0;
            fft_ram_in        = 32'd0;
            addr_counter        = 0;
        
            // Aguardar um pequeno delay para estabilização (ou aguardar reset, se necessário)
            #10;
            @(posedge clk);
            // Abre o arquivo contendo os valores
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
            // Lê o arquivo e escreve cada valor em um endereço consecutivo
            while (!$feof(fd)) begin
                ret = $fscanf(fd, "%d\n", value);  // Lê valor decimal (sendo possível ler números negativos)
                if (ret != 1) begin
                    $display("Aviso: leitura inválida (ret = %0d) no arquivo", ret);
                    break;
                end

                // Configura os sinais para a escrita:
                fft_ram_address_in    = addr_counter + i;         // endereços crescentes a partir de 0
                fft_ram_in            = value[31:0];           // valor lido do arquivo
                mem_write_enable_fft  = 1'b1;                 // ativa escrita para os 4 bytes (escrita completa)
                enable_ram_fft        = 1'b1;                 // habilita a porta B para escrita

                // Aguarda a borda de subida do clock para efetivar a escrita
                @(posedge clk);
                
                // Após o ciclo, desabilita o write para evitar escrita repetida
                mem_write_enable_fft = 4'h0;
                enable_ram_fft    = 1'b0;
                
                addr_counter = addr_counter + 2;
            end
            $fclose(fd);

        end
        
        $display("Finalizado o carregamento do arquivo na RAM. Total de palavras escritas: %0d", addr_counter);
    end

    RAM_mem_16b #(
            .MEM_WIDTH(128),
            .WORD_WIDTH(16)
        ) RAM_FFT (
            .clk        (clk),
    
            .en_i      (enable_ram_fft),
            .we_i      (mem_write_enable_fft),
            .addr_i    (fft_ram_address_in[($clog2(MEM_WIDTH) - 1):0]),
            .data_i    (fft_ram_in),
            .data_o_a    (fft_ram_out_i),
            .data_o_b    (fft_ram_out_r)
        );
    

 endmodule
 

////////////////////////////////////////////////////////////////////////////
//  FFT ACCELERATOR
////////////////////////////////////////////////////////////////////////////

// FFT VARIABLES
    parameter IN_width		= 12;
    parameter OUT_width		= 16;
    
    logic                   accel_out_en;      // 1  bits
    logic   [OUT_width-1:0]          accel_dout_r;      // 16 bits
    logic   [OUT_width-1:0]          accel_dout_i;       // 16 bits

    logic out_valid, reset;
    logic [IN_width-1:0] din_r ;
    logic [IN_width-1:0] din_i = fft_ram_out_i[IN_width-1:0];

    logic clk_fft;

    always_comb begin
        if(accel_en) begin
            clk_fft = clk;   
            reset = ~reset_n;
        end else begin 
            clk_fft = 0;       
            reset = 0;     
        end
    end

    always_ff @(posedge clk) begin
        din_r <= fft_ram_out_r[IN_width-1:0];
        din_i <= fft_ram_out_i[IN_width-1:0];
        if(accel_en) begin
            for (int i = 0; i < 32; i = i + 2) begin
                mem_write_enable_fft  = 1'b0;                
                enable_ram_fft        = 1'b1;                
                addr_i = i;
                $display("Addr %d: data_o_b = %h", i, fft_ram_out_i);
                $display("Addr %d: data_o_a = %h", i+1, fft_ram_out_r);
            end
        end 
    end
    
// FFT DECLARATION
    FFT FFT_CORE(
        .clk(clk),
        .reset(reset),
        .in_valid(accel_en),        // 1  bits
        .din_r(din_r),              // 12 bits  
        .din_i(din_i),              // 12 bits
        .out_valid(accel_out_en),   // 1  bits
        .dout_r(accel_dout_r),      // 16 bits
        .dout_i(accel_dout_i)       // 16 bits
    );
