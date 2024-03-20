`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2024 09:54:50 PM
// Design Name: 
// Module Name: fulladd4_tb
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


`timescale 1ns / 1ps

module fulladd4_tb;

  // Inputs
  reg [3:0] a,b;
  reg c_in;

  // Outputs
  wire [3:0] sum;
  wire c_out;

  // Instantiate the Unit Under Test (UUT)
  fulladd4 uut (
    .sum(sum), 
    .c_out(c_out), 
    .a(a), 
    .b(b), 
    .c_in(c_in)
  );

  initial begin
    // Initialize Inputs
    a = 0;
    b = 0;
    c_in = 0;

    // Wait 100 ns for global reset to finish
    #100;
        
    // Add stimulus here
// Add stimulus here
    a = 4'b0011; b = 4'b0101; c_in = 0;  // 3 + 5 + 0
    #50;
    a = 4'b1100; b = 4'b0110; c_in = 1;  // 12 + 6 + 1
    #50;
    a = 4'b1111; b = 4'b1111; c_in = 0;  // 15 + 15 + 0
    #50;
    a = 4'b0000; b = 4'b0001; c_in = 1;  // 0 + 1 + 1
    #50;
    a = 4'b1010; b = 4'b0101; c_in = 1;  // 10 + 5 + 1
    #50;
    a = 4'b1001; b = 4'b1001; c_in = 0;  // 9 + 9 + 0
    #50;
    a = 4'b0111; b = 4'b0111; c_in = 1;  // 7 + 7 + 1
    #50;
    a = 4'b0001; b = 4'b1110; c_in = 0;  // 1 + 14 + 0
    #50;
  end

  initial begin
    $monitor("Time = %2d, a = %4b, b = %4b, c_in = %1b, sum = %4b, c_out = %1b", $time, a, b, c_in, sum, c_out);
  end

endmodule

