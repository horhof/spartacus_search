// Spartacus Search in Verilog. Prints the hardcoded haystack on $display.
module spartacus_search;
    integer i;
    reg [31:0] haystack [0:4];
    initial begin
        haystack[0] = 1; haystack[1] = 2; haystack[2] = 3;
        haystack[3] = 4; haystack[4] = 5;
        for (i = 0; i < 5; i = i + 1) $display("%0d", haystack[i]);
        $finish;
    end
endmodule
