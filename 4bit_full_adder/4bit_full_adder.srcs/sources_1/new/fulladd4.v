`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2024 09:05:21 PM
// Design Name: 
// Module Name: fulladd4
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


module fulladd4(sum, c_out, a, b, c_in);
  output [3:0] sum;
  output c_out;
  input [3:0] a, b;
  input c_in;
  wire c1, c2, c3;

  fulladder fa0(sum[0], c1, a[0], b[0], c_in);
  fulladder fa1(sum[1], c2, a[1], b[1], c1);
  fulladder fa2(sum[2], c3, a[2], b[2], c2);
  fulladder fa3(sum[3], c_out, a[3], b[3], c3);
endmodule
