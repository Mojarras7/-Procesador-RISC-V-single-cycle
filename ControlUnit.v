module ControlUnit (
    input [6:0] opcode,
    output reg RegWrite,
    output reg ALUSrc,
    output reg MemRead,
    output reg MemWrite,
    output reg MemToReg,
    output reg Branch,
    output reg [1:0] ALUOp
);

    always @(*) begin
        case (opcode)
            7'b0110011: begin // R-type
                RegWrite  = 1;
                ALUSrc    = 0;
                MemRead   = 0;
                MemWrite  = 0;
                MemToReg  = 0;
                Branch    = 0;
                ALUOp     = 2'b10;
            end
            7'b0000011: begin // lw
                RegWrite  = 1;
                ALUSrc    = 1;
                MemRead   = 1;
                MemWrite  = 0;
                MemToReg  = 1;
                Branch    = 0;
                ALUOp     = 2'b00;
            end
            7'b0100011: begin // sw
                RegWrite  = 0;
                ALUSrc    = 1;
                MemRead   = 0;
                MemWrite  = 1;
                MemToReg  = 0; // no importa
                Branch    = 0;
                ALUOp     = 2'b00;
            end
            7'b1100011: begin // beq
                RegWrite  = 0;
                ALUSrc    = 0;
                MemRead   = 0;
                MemWrite  = 0;
                MemToReg  = 0; // no importa
                Branch    = 1;
                ALUOp     = 2'b01;
            end
            7'b0010011: begin // addi
                RegWrite  = 1;
                ALUSrc    = 1;
                MemRead   = 0;
                MemWrite  = 0;
                MemToReg  = 0;
                Branch    = 0;
                ALUOp     = 2'b10;
            end
            default: begin //cero
                RegWrite  = 0;
                ALUSrc    = 0;
                MemRead   = 0;
                MemWrite  = 0;
                MemToReg  = 0;
                Branch    = 0;
                ALUOp     = 2'b00;
            end
        endcase
    end
endmodule
