`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/20 17:41:50
// Design Name: 
// Module Name: MUX4L_5
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


module MUX4L_5(
	input [1:0] control,
	input [4:0] in00,
	input [4:0] in01,
	input [4:0] in10,
	input [4:0] in11,
	output [4:0] out
);
	assign out = control[0] ? (control[1] ? in11 : in01) : (control[1] ? in10 : in00);
endmodule