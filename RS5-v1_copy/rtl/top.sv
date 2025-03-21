

 //////////////////////////////////////////////////////////////////////////////
 // CPU TESTBENCH
 //////////////////////////////////////////////////////////////////////////////
 
 `include "RS5_pkg.sv"
    timeunit 1ns; timeprecision 1ns;
module top
    import RS5_pkg::*;
    #(
         parameter environment_e Environment    = ASIC,
         parameter mul_e         MULEXT         = 1'b1,
         parameter atomic_e      AMOEXT         = AMO_A,
         parameter bit           COMPRESSED     = 1'b0,
         parameter bit           VEnable        = 1'b0,
         parameter int           VLEN           = 256,
         parameter bit           XOSVMEnable    = 1'b0,
         parameter bit           ZIHPMEnable    = 1'b0,
         parameter bit           ZKNEEnable     = 1'b0,
         parameter bit           BRANCHPRED     = 1'b1
     )
     (
        input  logic                    clk,
        input  logic                    reset_n,
        input  logic                    sys_reset_i,
        input  logic                    stall,
    
        input  logic [31:0]             instruction_i,
        input  logic [31:0]             mem_data_i,
        input  logic [63:0]             mtime_i,
        input  logic [31:0]             irq_i,
    
        output logic [31:0]             instruction_address_o,
        output logic                    mem_operation_enable_o,
        output logic  [3:0]             mem_write_enable_o,
        output logic [31:0]             mem_address_o,
        output logic [31:0]             mem_data_o,
        output logic                    interrupt_ack_o,
        
        input logic  [31:0]             fft_ram_out_i,
        input logic  [31:0]             fft_ram_out_r,
        input logic                     rst,
        
        output logic                    accel_en,
        output logic                    accel_out_en, 
        output logic  [15:0]            accel_dout_r,   
        output logic  [15:0]            accel_dout_i  
     );
 
 //////////////////////////////////////////////////////////////////////////////
 // PARAMETERS FOR CORE INSTANTIATION
 //////////////////////////////////////////////////////////////////////////////
 
    // localparam mul_e         MULEXT          = MUL_M;
    // localparam atomic_e      AMOEXT          = AMO_A;
    // localparam bit           COMPRESSED      = 1'b1;
    // localparam bit           VEnable         = 1'b0;
    // localparam int           VLEN            = 256;
    localparam bit           USE_XOSVM       = 1'b0;
    localparam bit           USE_ZIHPM       = 1'b1;
    localparam bit           USE_ZKNE        = 1'b1;
    // localparam bit           BRANCHPRED      = 1'b1;

    parameter                IN_width		 = 12;
 
  
 //////////////////////////////////////////////////////////////////////////////
 // CPU
 //////////////////////////////////////////////////////////////////////////////
 
     RS5 #(
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
     ) rs5 (
        .clk                    (clk),
        .reset_n                (reset_n),
        .sys_reset_i            (1'b0),
        .stall                  (1'b0),
        .instruction_i          (instruction_i),
        .mem_data_i             (mem_data_i),
        .mtime_i                (mtime_i),
        .irq_i                  (irq_i),

        .instruction_address_o  (instruction_address_o),
        .mem_operation_enable_o (mem_operation_enable_o),
        .mem_write_enable_o     (mem_write_enable_o),
        .mem_address_o          (mem_address_o),
        .mem_data_o             (mem_data_write_o),
        .interrupt_ack_o        (interrupt_ack_o),
        .accel_en               (accel_en)
    );
 
    
    
// FFT DECLARATION
    FFT FFT_CORE(
        .clk                    (clk),
        .reset                  (rst),                      // RESET INVERTIDO
        .in_valid               (accel_en),                 // 1  bits
        .din_r                  (fft_ram_out_i[IN_width-1:0]),              // 12 bits  
        .din_i                  (fft_ram_out_r[IN_width-1:0]),              // 12 bits
        .out_valid              (accel_out_en),             // 1  bits
        .dout_r                 (accel_dout_r),             // 16 bits
        .dout_i                 (accel_dout_i)              // 16 bits
    );

endmodule