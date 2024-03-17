`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 10:43:28
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
    input A,
    input B,
    input C,
    output Sum,
    output Carry
    );
     assign Sum = A ^ B ^ C;
    assign Carry = (A&B) | (B&C) | (C&A) ;
endmodule
