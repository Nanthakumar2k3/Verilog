`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 14:01:23
// Design Name: 
// Module Name: Mux2x1
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


module Mux2x1(
    input [0:1] I,
    input S,
    output Y
    );
    assign Y = S ? I[1] : I[0];
endmodule
