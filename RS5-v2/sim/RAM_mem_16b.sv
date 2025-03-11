
//////////////////////////////////////////////////////////////////////////////
// RAM MEMORY
//////////////////////////////////////////////////////////////////////////////

`include "../rtl/RS5_pkg.sv"

module RAM_mem_16b
    import RS5_pkg::*;
#(
    parameter int    MEM_WIDTH  = 65536,
    parameter int    WORD_WIDTH  = 16
)
(
    input  logic                             clk,
    input  logic                             rst,
    input  logic                             en_i,
    input  logic                             we_i,
    input  logic [($clog2(MEM_WIDTH) - 1):0] addr_i,
    input  logic [31:0]                      data_i,
    output logic [WORD_WIDTH-1:0]            data_o_0_r,
    output logic [WORD_WIDTH-1:0]            data_o_1_r,
    output logic [WORD_WIDTH-1:0]            data_o_2_r,
    output logic [WORD_WIDTH-1:0]            data_o_3_r,
    output logic [WORD_WIDTH-1:0]            data_o_4_r,
    output logic [WORD_WIDTH-1:0]            data_o_5_r,
    output logic [WORD_WIDTH-1:0]            data_o_6_r,
    output logic [WORD_WIDTH-1:0]            data_o_7_r,
    output logic [WORD_WIDTH-1:0]            data_o_8_r,
    output logic [WORD_WIDTH-1:0]            data_o_9_r,
    output logic [WORD_WIDTH-1:0]            data_o_10_r,
    output logic [WORD_WIDTH-1:0]            data_o_11_r,
    output logic [WORD_WIDTH-1:0]            data_o_12_r,
    output logic [WORD_WIDTH-1:0]            data_o_13_r,
    output logic [WORD_WIDTH-1:0]            data_o_14_r,
    output logic [WORD_WIDTH-1:0]            data_o_15_r,
    output logic [WORD_WIDTH-1:0]            data_o_16_r,
    output logic [WORD_WIDTH-1:0]            data_o_17_r,
    output logic [WORD_WIDTH-1:0]            data_o_18_r,
    output logic [WORD_WIDTH-1:0]            data_o_19_r,
    output logic [WORD_WIDTH-1:0]            data_o_20_r,
    output logic [WORD_WIDTH-1:0]            data_o_21_r,
    output logic [WORD_WIDTH-1:0]            data_o_22_r,
    output logic [WORD_WIDTH-1:0]            data_o_23_r,
    output logic [WORD_WIDTH-1:0]            data_o_24_r,
    output logic [WORD_WIDTH-1:0]            data_o_25_r,
    output logic [WORD_WIDTH-1:0]            data_o_26_r,
    output logic [WORD_WIDTH-1:0]            data_o_27_r,
    output logic [WORD_WIDTH-1:0]            data_o_28_r,
    output logic [WORD_WIDTH-1:0]            data_o_29_r,
    output logic [WORD_WIDTH-1:0]            data_o_30_r,
    output logic [WORD_WIDTH-1:0]            data_o_31_r
    
);

    reg [WORD_WIDTH-1:0] RAM [0:MEM_WIDTH-1];

    /* Write */
    always_ff @(posedge clk) begin
        if (en_i == 1'b1) begin
            if (we_i == 1'b1) begin                                 // Store Byte(1 byte)
                RAM[addr_i]   <= data_i[WORD_WIDTH-1:0];
                
                // $display(" WRITINGGG ON RAM \n %b \n %b \n %d \n\n",
                //     data_i, 
                //     RAM[addr_i], 
                //     addr_i
                // );
            end
        end
    end

    /* Read */
    always_ff @(posedge clk or negedge rst) begin
        if (rst) begin
            data_o_0_r          <= 16'b0;
            data_o_1_r          <= 16'b0;
            data_o_2_r          <= 16'b0;
            data_o_3_r          <= 16'b0;
            data_o_4_r          <= 16'b0;
            data_o_5_r          <= 16'b0;
            data_o_6_r          <= 16'b0;
            data_o_7_r          <= 16'b0;
            data_o_8_r          <= 16'b0;
            data_o_9_r          <= 16'b0;
            data_o_10_r         <= 16'b0;
            data_o_11_r         <= 16'b0;
            data_o_12_r         <= 16'b0;
            data_o_13_r         <= 16'b0;
            data_o_14_r         <= 16'b0;
            data_o_15_r         <= 16'b0;
            data_o_16_r         <= 16'b0;
            data_o_17_r         <= 16'b0;
            data_o_18_r         <= 16'b0;
            data_o_19_r         <= 16'b0;
            data_o_20_r         <= 16'b0;
            data_o_21_r         <= 16'b0;
            data_o_22_r         <= 16'b0;
            data_o_23_r         <= 16'b0;
            data_o_24_r         <= 16'b0;
            data_o_25_r         <= 16'b0;
            data_o_26_r         <= 16'b0;
            data_o_27_r         <= 16'b0;
            data_o_28_r         <= 16'b0;
            data_o_29_r         <= 16'b0;
            data_o_30_r         <= 16'b0;
            data_o_31_r         <= 16'b0;
        end
        if (en_i == 1'b1) begin
            if (we_i == '0) begin
                data_o_0_r          <= RAM[0];
                data_o_1_r          <= RAM[1];
                data_o_2_r          <= RAM[2];
                data_o_3_r          <= RAM[3];
                data_o_4_r          <= RAM[4];
                data_o_5_r          <= RAM[5];
                data_o_6_r          <= RAM[6];
                data_o_7_r          <= RAM[7];
                data_o_8_r          <= RAM[8];
                data_o_9_r          <= RAM[9];
                data_o_10_r         <= RAM[10];
                data_o_11_r         <= RAM[11];
                data_o_12_r         <= RAM[12];
                data_o_13_r         <= RAM[13];
                data_o_14_r         <= RAM[14];
                data_o_15_r         <= RAM[15];
                data_o_16_r         <= RAM[16];
                data_o_17_r         <= RAM[17];
                data_o_18_r         <= RAM[18];
                data_o_19_r         <= RAM[19];
                data_o_20_r         <= RAM[20];
                data_o_21_r         <= RAM[21];
                data_o_22_r         <= RAM[22];
                data_o_23_r         <= RAM[23];
                data_o_24_r         <= RAM[24];
                data_o_25_r         <= RAM[25];
                data_o_26_r         <= RAM[26];
                data_o_27_r         <= RAM[27];
                data_o_28_r         <= RAM[28];
                data_o_29_r         <= RAM[29];
                data_o_30_r         <= RAM[30];
                data_o_31_r         <= RAM[31];
            end
        end
    end


endmodule
