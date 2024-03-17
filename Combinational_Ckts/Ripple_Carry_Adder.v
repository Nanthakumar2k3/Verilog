`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 15:19:49
// Design Name: 
// Module Name: Ripple_Carry_Adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Ripple_Carry_Adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout
    );
    wire [2:0] c;
    
    Full_Adder FA0(.A(A[0]),.B(B[0]),.C(Cin),.Sum(S[0]),.Carry(c[0]));
    Full_Adder FA1(.A(A[1]),.B(B[1]),.C(c[0]),.Sum(S[1]),.Carry(c[1]));
    Full_Adder FA2(.A(A[2]),.B(B[2]),.C(c[1]),.Sum(S[2]),.Carry(c[2]));
    Full_Adder FA3(.A(A[3]),.B(B[3]),.C(c[2]),.Sum(S[3]),.Carry(Cout));
    
endmodule
