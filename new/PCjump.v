`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/20 17:43:15
// Design Name: 
// Module Name: PCjump
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


module PCjump(
	input [31:0] PC0,	//ָ��
	input [25:0] inAddress,	//�����ַ
	output [31:0] outAddress	//�����ַ(ָ��)
);
	assign outAddress[31:28] = PC0[31:28];
	assign outAddress[27:2] = inAddress;
	assign outAddress[1:0] = 2'b00;
endmodule
