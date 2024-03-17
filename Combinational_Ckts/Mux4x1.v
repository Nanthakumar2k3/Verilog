`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 10:57:03
// Design Name: 
// Module Name: Mux4x1
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


module Mux4x1(
    input [0:3] I,
    input [0:1] S,
    output reg Y
    );
    always @ (*) 
    begin
    case(S) 
    2'b00 : Y=I[0];
    2'b01 : Y=I[1];
    2'b10 : Y=I[2];
    2'b11 : Y=I[3];
    endcase
    end 
    
endmodule
