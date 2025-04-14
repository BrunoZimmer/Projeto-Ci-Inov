module FlipFlopD (
    input logic clk,
    input logic rst,
    input logic D,
    input logic en,  // Enable signal
    output logic Q
);
    always_ff @(posedge clk or negedge rst) begin
        if (!rst)
            Q <= 1'b0;
        else if (en)
            Q <= D;
    end
endmodule