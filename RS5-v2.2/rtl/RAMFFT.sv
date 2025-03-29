
//////////////////////////////////////////////////////////////////////////////
// reg_bank MEMORY
//////////////////////////////////////////////////////////////////////////////

 `include "/home/ic/bruno.zimmer/Documents/Projeto/RS5-v2.2/rtl/RS5_pkg.sv"
// `include "../rtl/RS5_pkg.sv"

module RAMFFT
#(
    parameter int    MEMWIDTH  = 32,
    parameter int    WORDWIDTH  = 16
)
(
    input                                   clk,
    input                                   rst,
    input                                   accel_mem_en,
    input                                   en_i,
    input                                   we_i,
    input  [($clog2(64) - 1):0]             addr_i,
    input  [31:0]                           data_i,
    output reg [WORDWIDTH-1:0]              data_o_0_r,
    output reg [WORDWIDTH-1:0]              data_o_1_r,
    output reg [WORDWIDTH-1:0]              data_o_2_r,
    output reg [WORDWIDTH-1:0]              data_o_3_r,
    output reg [WORDWIDTH-1:0]              data_o_4_r,
    output reg [WORDWIDTH-1:0]              data_o_5_r,
    output reg [WORDWIDTH-1:0]              data_o_6_r,
    output reg [WORDWIDTH-1:0]              data_o_7_r,
    output reg [WORDWIDTH-1:0]              data_o_8_r,
    output reg [WORDWIDTH-1:0]              data_o_9_r,
    output reg [WORDWIDTH-1:0]              data_o_10_r,
    output reg [WORDWIDTH-1:0]              data_o_11_r,
    output reg [WORDWIDTH-1:0]              data_o_12_r,
    output reg [WORDWIDTH-1:0]              data_o_13_r,
    output reg [WORDWIDTH-1:0]              data_o_14_r,
    output reg [WORDWIDTH-1:0]              data_o_15_r,
    output reg [WORDWIDTH-1:0]              data_o_16_r,
    output reg [WORDWIDTH-1:0]              data_o_17_r,
    output reg [WORDWIDTH-1:0]              data_o_18_r,
    output reg [WORDWIDTH-1:0]              data_o_19_r,
    output reg [WORDWIDTH-1:0]              data_o_20_r,
    output reg [WORDWIDTH-1:0]              data_o_21_r,
    output reg [WORDWIDTH-1:0]              data_o_22_r,
    output reg [WORDWIDTH-1:0]              data_o_23_r,
    output reg [WORDWIDTH-1:0]              data_o_24_r,
    output reg [WORDWIDTH-1:0]              data_o_25_r,
    output reg [WORDWIDTH-1:0]              data_o_26_r,
    output reg [WORDWIDTH-1:0]              data_o_27_r,
    output reg [WORDWIDTH-1:0]              data_o_28_r,
    output reg [WORDWIDTH-1:0]              data_o_29_r,
    output reg [WORDWIDTH-1:0]              data_o_30_r,
    output reg [WORDWIDTH-1:0]              data_o_31_r
    
);


    reg [WORDWIDTH-1:0] dff_in [0:MEMWIDTH-1];
    reg [WORDWIDTH-1:0] dff_out [0:MEMWIDTH-1];
 // Generate words with 16-bit D Flip-Flops
    genvar word, bit_n;
    generate
        for (word= 0; word< MEMWIDTH; word++) begin : word_gen
            for (bit_n = 0; bit_n < WORDWIDTH; bit_n++) begin : bit_gen
                FlipFlopD dffInst (
                    .clk(clk),
                    .rst(rst),
                    .D(dff_in[word][bit_n]),
                    .Q(dff_out[word][bit_n]),
                    .en((en_i && we_i) || accel_mem_en)
                );
            end
        end
    endgenerate

    /* Write */
    always_ff @(posedge clk) begin

        if (!rst) begin
            // Reset memory contents on reset
            for (int i = 0; i < MEMWIDTH; i++) begin
                dff_in[i] <= '0;
            end
        end 
        if (en_i == 1'b1) begin
            if (we_i == 1'b1) begin                                 
                for (int bit_w = 0; bit_w < WORDWIDTH; bit_w++) begin
                    dff_in[addr_i][bit_w] <= data_i[bit_w];  // Write bit-by-bit
                end
            end
        end
        if (accel_mem_en == 1'b1) begin                                 
            for (int bit_w = 0; bit_w < WORDWIDTH; bit_w++) begin
                dff_in[addr_i][bit_w] <= data_i[bit_w];  // Write bit-by-bit
            end
        end
    end

    assign data_o_0_r     = dff_out[0];
    assign data_o_1_r     = dff_out[1];
    assign data_o_2_r     = dff_out[2];
    assign data_o_3_r     = dff_out[3];
    assign data_o_4_r     = dff_out[4];
    assign data_o_5_r     = dff_out[5];
    assign data_o_6_r     = dff_out[6];
    assign data_o_7_r     = dff_out[7];
    assign data_o_8_r     = dff_out[8];
    assign data_o_9_r     = dff_out[9];
    assign data_o_10_r    = dff_out[10];
    assign data_o_11_r    = dff_out[11];
    assign data_o_12_r    = dff_out[12];
    assign data_o_13_r    = dff_out[13];
    assign data_o_14_r    = dff_out[14];
    assign data_o_15_r    = dff_out[15];
    assign data_o_16_r    = dff_out[16];
    assign data_o_17_r    = dff_out[17];
    assign data_o_18_r    = dff_out[18];
    assign data_o_19_r    = dff_out[19];
    assign data_o_20_r    = dff_out[20];
    assign data_o_21_r    = dff_out[21];
    assign data_o_22_r    = dff_out[22];
    assign data_o_23_r    = dff_out[23];
    assign data_o_24_r    = dff_out[24];
    assign data_o_25_r    = dff_out[25];
    assign data_o_26_r    = dff_out[26];
    assign data_o_27_r    = dff_out[27];
    assign data_o_28_r    = dff_out[28];
    assign data_o_29_r    = dff_out[29];
    assign data_o_30_r    = dff_out[30];
    assign data_o_31_r    = dff_out[31];
    
endmodule


    