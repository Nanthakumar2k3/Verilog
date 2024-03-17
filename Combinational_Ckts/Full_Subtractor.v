`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 10:43:28
// Design Name: 
// Module Name: Full_Subtractor
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


module Full_Subtractor(
    input A,
    input B,
    input C,
    output Diff,
    output Borrow
    );
     assign Diff = A ^ B ^ C;
    assign Borrow = (~A&B) | (B&C) | (~A&C);
endmodule
