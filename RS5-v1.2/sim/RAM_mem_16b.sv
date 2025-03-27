
//////////////////////////////////////////////////////////////////////////////
// RAM MEMORY
//////////////////////////////////////////////////////////////////////////////

`include "../rtl/RS5_pkg.sv"

module RAMFFT
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
    input  logic [15:0]                      addr_i,
    input  logic [31:0]                      data_i,
    output logic [31:0]                      data_o_a,
    output logic [31:0]                      data_o_b
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
            data_o_a            <= 32'b0;
            data_o_b            <= 32'b0;

        end
        if (en_i == 1'b1) begin
            if (we_i == '0) begin
                data_o_a[WORD_WIDTH-1:0]    <= RAM[addr_i];
                data_o_b[WORD_WIDTH-1:0]    <= RAM[addr_i+1];

                if (RAM[addr_i]=== 16'bx) begin
                    data_o_a[WORD_WIDTH-1:0]    <= 16'b0;
                end
                if (RAM[addr_i+1]=== 16'bx) begin
                    data_o_b[WORD_WIDTH-1:0]    <= 16'b0;
                end
            end
        end
    end


endmodule
