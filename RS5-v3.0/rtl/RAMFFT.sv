
//////////////////////////////////////////////////////////////////////////////
// reg_bank MEMORY
//////////////////////////////////////////////////////////////////////////////

 `include "/home/ic/bruno.zimmer/Documents/Projeto/RS5-v2.2/rtl/RS5_pkg.sv"
// `include "../rtl/RS5_pkg.sv"

module RAMFFT
#(
    parameter int    MEMWIDTH  = 64,
    parameter int    WORDWIDTH  = 16
)
(
    input                                   clk,
    input                                   rst,
    input                                   accel_mem_en,

    input                                   en_i,
    input                                   we_i,

    input  [31:0]                           addr_i,
    input  [31:0]                           data_i,

    output reg [WORDWIDTH-1:0]              data_o_r[0:(MEMWIDTH/2)-1],
    output reg [WORDWIDTH-1:0]              data_o_i[0:(MEMWIDTH/2)-1] // wordwidth-5 ?? 
    
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

    assign data_o_r     = dff_out[0:(MEMWIDTH/2)-1];
    assign data_o_i     = dff_out[(MEMWIDTH/2):MEMWIDTH-1];
    
endmodule


    