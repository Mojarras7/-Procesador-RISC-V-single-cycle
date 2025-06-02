module ALU (
    input [31:0] A,
    input [31:0] B,
    input [3:0] ALUControl,
    output reg [31:0] result,
    output zero
);
    assign zero = (result == 0);

    always @(*) begin
        case (ALUControl)
            4'b0000: result = A + B;                        // ADD
            4'b0001: result = A - B;                        // SUB
            4'b0010: result = A & B;                        // AND
            4'b0011: result = A | B;                        // OR
            4'b0100: result = A ^ B;                        // XOR
            4'b0101: result = A << B[4:0];                  // SLL
            4'b0110: result = A >> B[4:0];                  // SRL
            4'b0111: result = $signed(A) >>> B[4:0];        // SRA
            4'b1000: result = ($signed(A) < $signed(B)) ? 1 : 0; // SLT
            default: result = 32'b0;
        endcase
    end
endmodule
