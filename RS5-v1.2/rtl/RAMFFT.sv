
//////////////////////////////////////////////////////////////////////////////
// RAM MEMORY
//////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////
// reg_bank MEMORY
//////////////////////////////////////////////////////////////////////////////

 `include "/home/ic/bruno.zimmer/Documents/Projeto/RS5-v1.2/rtl/RS5_pkg.sv"
// `include "../rtl/RS5_pkg.sv"

module RAMFFT
#(
    parameter int    MEMWIDTH  = 128,
    parameter int    WORDWIDTH  = 16
)
(
    input  logic                             clk,
    input  logic                             rst,
    input  logic                             accel_mem_en,
    input  logic                             accel_en,

    input  logic                             en_i,
    input  logic                             we_i,

    input  logic [WORDWIDTH-1:0]            addr_i,
    input  logic [WORDWIDTH-1:0]            data_i,
    output logic [WORDWIDTH-1:0]            data_o_a,
    output logic [WORDWIDTH-1:0]            data_o_b
    
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

        if (accel_mem_en == 1'b1) begin                                 
            for (int bit_w = 0; bit_w < WORDWIDTH; bit_w++) begin
                dff_in[addr_i][bit_w] <= data_i[bit_w];  // Write bit-by-bit
            end
        end
    end

    /* Read */
    always_ff @(posedge clk ) begin
        
        if (accel_en == 1'b1) begin                
            for (int bit_w = 0; bit_w < WORDWIDTH; bit_w++) begin
                data_o_a[bit_w] <= dff_out[addr_i][bit_w];  
                data_o_b[bit_w] <= dff_out[addr_i+1][bit_w];  
            end
        end

        if (accel_en == 1'b0) begin                               
            data_o_a <= 16'b0; 
            data_o_b <= 16'b0;
        end         

    end
    
endmodule


    


