module multiplicador (input [2:0] a, b, output [6:0] c);
    assign c = a * b;
endmodule

module test;
    reg [2:0] a, b;
    wire [6:0] c;
    multiplicador m1 (a, b, c);
    initial begin
        a = 4'b000;
        b = 4'b000;
        $monitor($time, " a=%b b=%b c=%b", a, b, c);
        #10;
        a = 4'b001;
        b = 4'b001;
        $monitor($time, " a=%b b=%b c=%b", a, b, c);
        #10;
        a = 4'b010;
        b = 4'b010;
        $monitor($time, " a=%b b=%b c=%b", a, b, c);
        #10;
        a = 4'b011;
        b = 4'b011;
        $monitor($time, " a=%b b=%b c=%b", a, b, c);
        #10;
        a = 4'b100;
        b = 4'b100;
        $monitor($time, " a=%b b=%b c=%b", a, b, c);
        #10;
        a = 4'b101;
        b = 4'b101;
        $monitor($time, " a=%b b=%b c=%b", a, b, c);
        #10;
        a = 4'b110;
        b = 4'b110;
        $monitor($time, " a=%b b=%b c=%b", a, b, c);
        #10;
        a = 4'b111;
        b = 4'b111;
        $monitor($time, " a=%b b=%b c=%b", a, b, c);
        #10;
        $finish;
    end
endmodule