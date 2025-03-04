/*!\file ram.sv
 * RS5 VERSION - 1.1.0 - Pipeline Simplified and Core Renamed
 *
 * Distribution:  OCtober 2023
 *
 * Willian Nunes    <willian.nunes@edu.pucrs.br>
 * Angelo Dal Zotto <angelo.dalzotto@edu.pucrs.br>
 *
 * Research group: GAPH-PUCRS  <>
 *
 * \brief
 * RAM implementation for RS5 simulation.
 *
 * \detailed
 * RAM implementation for RS5 simulation.
 */

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

    input  logic                             en_i,
    input  logic                             we_i,
    input  logic [($clog2(MEM_WIDTH) - 1):0] addr_i,
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
    always_ff @(posedge clk) begin
        if (en_i == 1'b1) begin
            if (we_i == '0) begin
                data_o_a[MEM_WIDTH-1:0]    <= RAM[addr_i];
                data_o_b[MEM_WIDTH-1:0]    <= RAM[addr_i+1];
            end
        end
    end

endmodule
