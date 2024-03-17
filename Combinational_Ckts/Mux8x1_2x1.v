`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 14:05:19
// Design Name: 
// Module Name: Mux8x1_2x1
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


module Mux8x1_2x1(
    input [0:7] I,
    input [0:2] S,
    output Y
    );
    wire [0:6]w;
    Mux2x1 X0(.I({I[0],I[1]}),.S(S[2]),.Y(w[0]));
    Mux2x1 X1(.I({I[2],I[3]}),.S(S[2]),.Y(w[1]));
    Mux2x1 X2(.I({I[4],I[5]}),.S(S[2]),.Y(w[2]));
    Mux2x1 X3(.I({I[6],I[7]}),.S(S[2]),.Y(w[3]));
    
    Mux2x1 X4(.I({w[0],w[1]}),.S(S[1]),.Y(w[4]));
    Mux2x1 X5(.I({w[2],w[3]}),.S(S[1]),.Y(w[5]));
    Mux2x1 X6(.I({w[4],w[5]}),.S(S[0]),.Y(Y));
endmodule
