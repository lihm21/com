`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/20 17:38:06
// Design Name: 
// Module Name: ALU
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


module ALU(
	input[2:0] ALUOp,
	input[31:0] A,
	input[31:0] B,
	output zero,
	output reg[31:0] result,
	output sign
);
	parameter _ADD=	3'b000;
	parameter _SUB=	3'b001;
	parameter _SLL=	3'b010;
	parameter _OR=	3'b011;
	parameter _AND=	3'b100;
	parameter _SLTU=	3'b101;
	parameter _SLT=	3'b110;
	parameter _XOR=	3'b111;
	assign zero=	result==0;
	assign sign=	result[31];
	always@(*)begin
		case(ALUOp)
		_ADD:	result=	A+B;
		_SUB:	result=	A-B;
		_SLL:	result=	A<<B;
		_OR:	result=	A|B;
		_AND:	result=	A&B;
		_SLTU:	result=	A<B;
		_SLT:	result=	A[31]!=B[31]?A[31]>B[31]:A<B;
		_XOR:	result=	A^B;
		default:	result=	0;
		endcase
	end
endmodule
