module fft #(
    parameter WIDTH = 16,  // Data width
    parameter N = 32,     // Size of the FFT (should be a power of 2)
    localparam K_WIDTH = $clog2(N),
    localparam I_WIDTH = WIDTH - K_WIDTH
)(
    input wire clk,                               // Clock
    input wire load,                              // Reset
    input wire [WIDTH-1:0] _real_in [0:N-1],    // Real input array
    input wire [WIDTH-1:0] _imag_in [0:N-1],    // Imaginary input array
    output reg [WIDTH-1:0] real_out [0:N-1],      // Real output array
    output reg [WIDTH-1:0] imag_out [0:N-1],      // Imaginary output array
    output reg done                               // Done signal
);
    // Reordered input data
    wire signed [WIDTH-1:0] real_in_reord [0:N-1];
    wire signed [WIDTH-1:0] imag_in_reord [0:N-1];

    wire [WIDTH-1:0] _real_out [0:N-1];
    wire [WIDTH-1:0] _imag_out [0:N-1];
    generate
        genvar o_load;
        for (o_load = 0; o_load < N; o_load = o_load + 1) begin: load_output
            always @(posedge clk) begin
                if (done) begin
                    real_out[o_load] <= _real_out[o_load];
                    imag_out[o_load] <= _imag_out[o_load];
                end
            end
        end: load_output
    endgenerate

    // Pipeline control
    reg [K_WIDTH-1:0] stage_count;  // Tracks the current pipeline stage
    reg computing;              // Signals start of computation

    // Pipeline control logic
    always @(posedge clk) begin
        if (load) begin
            done <= 0;
            computing <= 1;
            stage_count <= 0;
        end else if (computing && stage_count < K_WIDTH[K_WIDTH-1:0]-1) begin
            stage_count <= stage_count + 1;
        end else if (computing && stage_count < K_WIDTH[K_WIDTH-1:0]) begin
            done <= 1;
            computing <= 0;
            stage_count <= 0;
        end else begin
            done <= 0;
        end
    end

    // Generate block to reorder input data
    generate 
    // begin: reorder_input
        genvar r_i, r_j;
        for (r_i = 0; r_i < N; r_i = r_i + 1) begin : bit_reverse
            wire [K_WIDTH-1:0] reversed_addr;

            // Calculate the bit-reversed address
            for (r_j = 0; r_j < K_WIDTH; r_j = r_j + 1) begin
                assign reversed_addr[r_j] = r_i[K_WIDTH-1-r_j];
            end

            // Assign the bit-reversed data to the stage arrays
            assign real_in_reord[r_i] = {
                {K_WIDTH{_real_in[reversed_addr][I_WIDTH-1]}}, _real_in[reversed_addr]};
            assign imag_in_reord[r_i] = {
                {K_WIDTH{_imag_in[reversed_addr][I_WIDTH-1]}}, _imag_in[reversed_addr]};
        end : bit_reverse
    // end: reorder_input
    endgenerate

    // FFT main computation loop with pipelining
    generate 
    // begin: fft_main
        genvar k, stage, i;
        // TODO: optimize to use N/4
        for (k = 0; k < N/2; k = k + 1) begin : fft_k
            // Initialize internal connections with pipeline registers
            reg signed [WIDTH-1:0] real_stage [0:2*N-2] /*verilator split_var*/;
            reg signed [WIDTH-1:0] imag_stage [0:2*N-2] /*verilator split_var*/;

            // Load initial data into pipeline
            for (i = 0; i < N; i = i + 1) begin
                always @(posedge clk) begin: load_reord_input
                    if (load) begin
                        real_stage[i] <= real_in_reord[i];
                        imag_stage[i] <= imag_in_reord[i];
                    end
                end: load_reord_input
            end

            // Iterate over the FFT stages with pipelining
            for (stage = 0; stage < K_WIDTH; stage = stage + 1) begin : fft_stage
                // Number of elements in the current stage
                localparam STAGE_N = 1 << (stage + 1);
                localparam BUTTERFLY_N = 1 << (K_WIDTH - stage - 1);

                // Offset for the connection references
                localparam MASK = {(K_WIDTH + 1){1'b1}};
                localparam OFFSET = MASK & ~(MASK >> stage);
                localparam NEXT_OFFSET = MASK & ~(MASK >> (stage + 1));

                // Generate twiddle factors for each stage and k
                localparam ANGLE = -2.0 * 3.141592653589793 * k / STAGE_N;
                localparam COS = $rtoi($cos(ANGLE) * (1 << WIDTH));
                localparam SIN = $rtoi($sin(ANGLE) * (1 << WIDTH));
                wire signed [WIDTH+1:0] TWIDDLE_REAL;
                wire signed [WIDTH+1:0] TWIDDLE_IMAG;

                assign TWIDDLE_REAL = COS[WIDTH+1:0];
                assign TWIDDLE_IMAG = SIN[WIDTH+1:0];

                // Apply the butterfly operation on pairs of elements in each stage
                for (i = 0; i < BUTTERFLY_N; i = i + 1) begin : fft_butterfly
                    /* verilator lint_off UNUSEDSIGNAL */
                    wire signed [2*WIDTH-1:0] aux_real;
                    wire signed [2*WIDTH-1:0] aux_imag;
                    /* verilator lint_on UNUSEDSIGNAL */

                    // Calculate b * w for each quadrant
                    assign aux_real = (
                          real_stage[OFFSET + 2*i + 1] * TWIDDLE_REAL - 
                          imag_stage[OFFSET + 2*i + 1] * TWIDDLE_IMAG);
                    assign aux_imag = (
                          real_stage[OFFSET + 2*i + 1] * TWIDDLE_IMAG + 
                          imag_stage[OFFSET + 2*i + 1] * TWIDDLE_REAL);

                    // Pipeline the butterfly outputs
                    always @(posedge clk) begin
                        if (stage_count == stage && computing) begin
                            real_stage[NEXT_OFFSET + i] <= (
                                real_stage[OFFSET + 2*i] + aux_real[2*WIDTH-1:WIDTH]);
                            imag_stage[NEXT_OFFSET + i] <= (
                                imag_stage[OFFSET + 2*i] + aux_imag[2*WIDTH-1:WIDTH]);
                        end
                    end

                    if (stage == K_WIDTH - 1) begin: assign_output
                        // Assign outputs to the first quadrant
                        assign _real_out[k + 0*N/4] = (
                            real_stage[OFFSET + 2*i] + aux_real[2*WIDTH-1:WIDTH]);
                        assign _imag_out[k + 0*N/4] = (
                                imag_stage[OFFSET + 2*i] + aux_imag[2*WIDTH-1:WIDTH]);

                        // if (k != 0) 
                        begin: optimize
                            /* verilator lint_off UNUSEDSIGNAL */
                            wire signed [2*WIDTH-1:0] aux_real_2;
                            wire signed [2*WIDTH-1:0] aux_imag_2;
                            /* verilator lint_on UNUSEDSIGNAL */

                            assign aux_real_2 = (
                                real_stage[OFFSET + 2*i + 1] * (-1) * TWIDDLE_REAL +
                                imag_stage[OFFSET + 2*i + 1] * TWIDDLE_IMAG);
                            assign aux_imag_2 = (
                                real_stage[OFFSET + 2*i + 1] * (-1) * TWIDDLE_IMAG -
                                imag_stage[OFFSET + 2*i + 1] * TWIDDLE_REAL);
                            assign _real_out[k + 2*N/4] = (
                                real_stage[OFFSET + 2*i] + aux_real_2[2*WIDTH-1:WIDTH]);
                            assign _imag_out[k + 2*N/4] = (
                                imag_stage[OFFSET + 2*i] + aux_imag_2[2*WIDTH-1:WIDTH]);
                        end: optimize
                    end: assign_output
                end : fft_butterfly
            end : fft_stage
        end : fft_k
    // end : fft_main
    endgenerate
endmodule