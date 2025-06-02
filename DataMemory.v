module DataMemory (
    input clk,
    input [31:0] addr,
    input [31:0] write_data,
    input MemRead,
    input MemWrite,
    output reg [31:0] read_data
);
    // Memoria de 1024 palabras (4096 bytes)
    reg [31:0] memory [0:1023];

    always @(posedge clk) begin
        if (MemWrite)
            memory[addr[11:2]] <= write_data;  
    end

    always @(*) begin
        if (MemRead)
            read_data = memory[addr[11:2]];
        else
            read_data = 32'b0;
    end
endmodule
