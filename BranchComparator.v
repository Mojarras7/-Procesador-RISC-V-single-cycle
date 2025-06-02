module BranchComparator (
    input [31:0] rs1,
    input [31:0] rs2,
    input [2:0] funct3,
    output reg branch
);
    always @(*) begin
        case (funct3)
            3'b000: branch = (rs1 == rs2);                   // beq
            3'b001: branch = (rs1 != rs2);                   // bne
            3'b100: branch = ($signed(rs1) < $signed(rs2));  // blt signed es para ignorar el signo
            3'b101: branch = ($signed(rs1) >= $signed(rs2)); // bge
            default: branch = 0;
        endcase
    end
endmodule
