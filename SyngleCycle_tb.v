module SyngleCycle_tb;
    reg clk;
    reg reset;

    SingleCycle DUT(
        .clk(clk),
        .reset(reset)
    );

    always #5 clk = ~clk;

    initial begin
        // Inicialización
        clk = 0;
        reset = 1;
        #10;
        reset = 0;

        #200;
        $finish;
    end

    initial begin
        $monitor("Time=%0t | PC=%h | Instruction=%h", $time, DUT.PC, DUT.instruction);
    end

endmodule
