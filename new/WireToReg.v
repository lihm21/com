`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/20 17:37:20
// Design Name: 
// Module Name: WireToReg
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


module WireToReg(
	input CLK,
	input RW, //Œ¥”√
	input [31:0]data1,
	output reg[31:0]data2
);
	integer i;
	always@(negedge CLK)begin
		for (i = 0; i < 32; i = i + 1)data2[i] = data1[i];
	end
endmodule
