`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2024 09:15:27 PM
// Design Name: 
// Module Name: fulladder
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


// Behavioral code for full adder 
module fulladder(S, Cout, X1, X2, Cin);
  input X1, X2, Cin;
  output S, Cout;
  reg[1:0] temp;

  always @(*)
  begin
    temp = {1'b0, X1} + {1'b0, X2} + {1'b0, Cin};
  end

  assign S = temp[0];
  assign Cout = temp[1];
endmodule
