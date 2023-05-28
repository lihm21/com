`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/20 17:44:27
// Design Name: 
// Module Name: SignZeroExtend
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


module SignZeroExtend(
	input [1:0]ExtSel,	//���Ʋ�λ�����Ϊ1X�����з�����չ��01��immediateȫ��0��00��saȫ��0
	input [15:0] immediate,	//16λ������
	output [31:0] extendImmediate	//�����32λ������
);
	assign extendImmediate[4:0] = (ExtSel == 2'b00) ? immediate[10:6] : immediate[4:0];
	assign extendImmediate[15:5] = (ExtSel == 2'b00) ? 3'b00000000000 : immediate[15:5];
	assign extendImmediate[31:16] = (ExtSel == 2'b10) ? (immediate[15] ? 16'hffff : 16'h0000) : 16'h0000;
endmodule
