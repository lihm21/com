`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/20 17:40:18
// Design Name: 
// Module Name: MUX2L_32
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


module MUX2L_32(
	input control,
	input [31:0] in0,
	input [31:0] in1,
	output [31:0] out
);
	assign out = control ? in1 : in0;
endmodule
