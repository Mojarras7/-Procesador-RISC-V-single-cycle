module RegisterFile (
    input clk,
    input regWriteEnable,                
    input [4:0] readRegister1,           
    input [4:0] readRegister2,          
    input [4:0] writeRegister,         
    input [31:0] writeData,             
    output [31:0] readData1,          
    output [31:0] readData2              
);

    reg [31:0] registers [0:31];      

    assign readData1 = (readRegister1 != 0) ? registers[readRegister1] : 32'b0;
    assign readData2 = (readRegister2 != 0) ? registers[readRegister2] : 32'b0;

    // Escritura secuencial
    always @(posedge clk) begin
        if (regWriteEnable && writeRegister != 0)
            registers[writeRegister] <= writeData;
    end

endmodule