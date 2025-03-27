
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
    input                                   en_i,
    input                                   we_i,
    input  [($clog2(MEMWIDTH) - 1):0]       addr_i,
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
                    .en(en_i && we_i) 
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
    end

    /* Read */
    always_ff @(posedge clk or negedge rst) begin
        // if (!rst) begin
        //     // Reset all outputs
        //     data_o_0_r <= '0;
        //     data_o_1_r <= '0;
        //     data_o_2_r <= '0;
        //     data_o_3_r <= '0;
        //     data_o_4_r <= '0;
        //     data_o_5_r <= '0;
        //     data_o_6_r <= '0;
        //     data_o_7_r <= '0;
        //     data_o_8_r <= '0;
        //     data_o_9_r <= '0;
        //     data_o_10_r <= '0;
        //     data_o_11_r <= '0;
        //     data_o_12_r <= '0;
        //     data_o_13_r <= '0;
        //     data_o_14_r <= '0;
        //     data_o_15_r <= '0;
        //     data_o_16_r <= '0;
        //     data_o_17_r <= '0;
        //     data_o_18_r <= '0;
        //     data_o_19_r <= '0;
        //     data_o_20_r <= '0;
        //     data_o_21_r <= '0;
        //     data_o_22_r <= '0;
        //     data_o_23_r <= '0;
        //     data_o_24_r <= '0;
        //     data_o_25_r <= '0;
        //     data_o_26_r <= '0;
        //     data_o_27_r <= '0;
        //     data_o_28_r <= '0;
        //     data_o_29_r <= '0;
        //     data_o_30_r <= '0;
        //     data_o_31_r <= '0;
        // end 
        if (en_i == 1'b1) begin
            if (we_i == '0) begin
                data_o_0_r          <= dff_out[0];
                data_o_1_r          <= dff_out[1];
                data_o_2_r          <= dff_out[2];
                data_o_3_r          <= dff_out[3];
                data_o_4_r          <= dff_out[4];
                data_o_5_r          <= dff_out[5];
                data_o_6_r          <= dff_out[6];
                data_o_7_r          <= dff_out[7];
                data_o_8_r          <= dff_out[8];
                data_o_9_r          <= dff_out[9];
                data_o_10_r         <= dff_out[10];
                data_o_11_r         <= dff_out[11];
                data_o_12_r         <= dff_out[12];
                data_o_13_r         <= dff_out[13];
                data_o_14_r         <= dff_out[14];
                data_o_15_r         <= dff_out[15];
                data_o_16_r         <= dff_out[16];
                data_o_17_r         <= dff_out[17];
                data_o_18_r         <= dff_out[18];
                data_o_19_r         <= dff_out[19];
                data_o_20_r         <= dff_out[20];
                data_o_21_r         <= dff_out[21];
                data_o_22_r         <= dff_out[22];
                data_o_23_r         <= dff_out[23];
                data_o_24_r         <= dff_out[24];
                data_o_25_r         <= dff_out[25];
                data_o_26_r         <= dff_out[26];
                data_o_27_r         <= dff_out[27];
                data_o_28_r         <= dff_out[28];
                data_o_29_r         <= dff_out[29];
                data_o_30_r         <= dff_out[30];
                data_o_31_r         <= dff_out[31];
            end
        end
    end

    
endmodule


    