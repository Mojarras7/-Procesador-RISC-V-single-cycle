module ALUControl (
    input [1:0] ALUOp,
    input [2:0] funct3,
    input funct7, // bit 5 of funct7
    output reg [3:0] ALUControl
);
    always @(*) begin
        case (ALUOp)
            2'b00: ALUControl = 4'b0000;  // LW/SW 
            2'b01: ALUControl = 4'b0001;  // BEQ 
            2'b10: begin // R-type / I-type
                case ({funct3, funct7})
                    4'b0000: ALUControl = 4'b0000; // ADD
                    4'b0001: ALUControl = 4'b0001; // SUB
                    4'b1110: ALUControl = 4'b0010; // AND
                    4'b1100: ALUControl = 4'b0011; // OR
                    4'b1000: ALUControl = 4'b0100; // XOR
                    4'b0010: ALUControl = 4'b0101; // SLL
                    4'b1010: ALUControl = 4'b0110; // SRL
                    4'b1011: ALUControl = 4'b0111; // SRA
                    default: ALUControl = 4'b1111; // no valido
                endcase
            end
            default: ALUControl = 4'b1111;
        endcase
    end
endmodule
