
// `include "./RS5_pkg.sv"

// //////////////////////////////////////////////////////////////////////////////
// // CPU TESTBENCH
// //////////////////////////////////////////////////////////////////////////////

// module top
//     import RS5_pkg::*;
// #(
//     `ifndef SYNTH
//         parameter bit           DEBUG          = 1'b0,
//         parameter string        DBG_REG_FILE   = "./debug/regBank.txt",
//         parameter bit           PROFILING      = 1'b0,
//         parameter string        PROFILING_FILE = "./debug/Report.txt",
//     `endif
//         parameter environment_e Environment    = ASIC,
//         parameter mul_e         MULEXT         = MUL_M,
//         parameter atomic_e      AMOEXT         = AMO_A,
//         parameter bit           COMPRESSED     = 1'b0,
//         parameter bit           VEnable        = 1'b0,
//         parameter int           VLEN           = 256,
//         parameter bit           XOSVMEnable    = 1'b0,
//         parameter bit           ZIHPMEnable    = 1'b0,
//         parameter bit           ZKNEEnable     = 1'b0,
//         parameter bit           BRANCHPRED     = 1'b1
//     )
//     (
//     input  logic                    clk,
//     input  logic                    reset_n,
//     input  logic                    sys_reset_i,
//     input  logic                    stall,

//     input  logic [31:0]             instruction_i,
//     input  logic [31:0]             mem_data_i,
//     input  logic [63:0]             mtime_i,
//     input  logic [31:0]             irq_i,

//     output logic [31:0]             instruction_address_o,
//     output logic                    mem_operation_enable_o,
//     output logic  [3:0]             mem_write_enable_o,
//     output logic [31:0]             mem_address_o,
//     output logic [31:0]             mem_data_o,
//     output logic                    interrupt_ack_o,
//     output  logic   [31:0]          accel_input,
//     output  logic                   accel_en,
//     output  logic                   accel_out_en,      // 1  bits
//     output  logic   [15:0]          accel_dout_r,      // 16 bits
//     output  logic   [15:0]          accel_dout_i       // 16 bits
//     );
//         timeunit 1ns; timeprecision 1ns;




//     //////////////////////////////////////////////////////////////////////////////
//     // TB SIGNALS
//     //////////////////////////////////////////////////////////////////////////////

//         /* Number of used bits is defined by the memory size */
//         /* verilator lint_off UNUSEDSIGNAL */
//         logic [31:0]            instruction_address;
//         /* verilator lint_on UNUSEDSIGNAL */

//         /* RTC is 64 bits but the bus is 32 bits */
//         /* verilator lint_off UNUSEDSIGNAL */
//         logic [63:0]            data_rtc;
//         /* verilator lint_on UNUSEDSIGNAL */

//         logic                   interrupt_ack;
//         logic [63:0]            mtime;
//         logic [31:0]            instruction;
//         logic                   enable_ram, enable_rtc, enable_plic, enable_tb;
//         logic                   mem_operation_enable;
//         logic [31:0]            mem_address, mem_data_read, mem_data_write;
//         logic [3:0]             mem_write_enable;
//         byte                    char;
//         logic [31:0]            data_ram, data_plic, data_tb;
//         logic                   enable_tb_r, enable_rtc_r, enable_plic_r;
//         logic                   mti, mei;
//         logic [31:0]            irq;


// //////////////////////////////////////////////////////////////////////////////
// // PARAMETERS FOR CORE INSTANTIATION
// //////////////////////////////////////////////////////////////////////////////

//         localparam bit           USE_XOSVM       = 1'b0;
//         localparam bit           USE_ZIHPM       = 1'b1;
//         localparam bit           USE_ZKNE        = 1'b1;
    
//         localparam string        BIN_FILE        = "../app/exercicio/exercicio.bin";
    
//         localparam int           i_cnt = 1;


//     RS5  #(
//         `ifndef SYNTH
//             .DEBUG      (DEBUG          ),
//             .PROFILING  (PROFILING      ),
//         `endif
//             .Environment(ASIC           ),
//             .MULEXT     (MULEXT         ),
//             .AMOEXT     (AMOEXT         ),
//             .COMPRESSED (COMPRESSED     ),
//             .VEnable    (VEnable        ),
//             .VLEN       (VLEN           ),
//             .XOSVMEnable(USE_XOSVM      ),
//             .ZIHPMEnable(USE_ZIHPM      ),
//             .ZKNEEnable (USE_ZKNE       ),
//             .BRANCHPRED (BRANCHPRED     )
//     )dut (
//         .clk                    (clk),
//         .reset_n                (reset_n),
//         .sys_reset_i            (1'b0),
//         .stall                  (1'b0),
//         .instruction_i          (instruction),
//         .mem_data_i             (mem_data_read),
//         .mtime_i                (mtime),
//         .irq_i                  (irq),
//         .instruction_address_o  (instruction_address),
//         .mem_operation_enable_o (mem_operation_enable),
//         .mem_write_enable_o     (mem_write_enable),
//         .mem_address_o          (mem_address),
//         .mem_data_o             (mem_data_write),
//         .interrupt_ack_o        (interrupt_ack),
//         .accel_input            (accel_input), // 32 bits 
//         .accel_en               (accel_en)
//     );




// //////////////////////////////////////////////////////////////////////////////
// //  FFT ACCELERATOR
// //////////////////////////////////////////////////////////////////////////////

// // ACCELERATOR VARIABLES
    
// //     parameter IN_width		= 12;
// //     parameter OUT_width		= 16;

// //     logic out_valid, reset;
// //     logic [IN_width-1:0] din_r = accel_input[2*IN_width-1:IN_width];
// //     logic [IN_width-1:0] din_i = accel_input[IN_width-1:0];

// //     logic clk_fft;

// //     initial begin
// //         clk_fft = 0;       
// //         reset = 0;     
// //         if(accel_en) begin
// //             clk_fft = clk;   
// //             reset = ~reset_n;
// //         end
// //     end

// // // FFT DECLARATION
// //     FFT FFT_CORE(
// //         .clk(clk),
// //         .reset(reset),
// //         .in_valid(accel_en),        // 1  bits
// //         .din_r(din_r),              // 12 bits  
// //         .din_i(din_i),              // 12 bits
// //         .out_valid(accel_out_en),   // 1  bits
// //         .dout_r(accel_dout_r),      // 16 bits
// //         .dout_i(accel_dout_i)       // 16 bits
// //     );



// endmodule