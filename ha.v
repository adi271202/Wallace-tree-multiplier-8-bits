`timescale 1ns / 1ps


module ha(
    input a,b,
   output s,cout
    );
    assign s= a^b;
    assign cout= a&b;
endmodule
