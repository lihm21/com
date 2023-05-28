`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/20 17:39:38
// Design Name: 
// Module Name: InstructionMemory
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


module InstructionMemory(
	input InsMemRW,	//��д�����źţ�1Ϊд��0λ��
	input [31:0] IAddr,	//ָ���ַ�������
	//input IDataIn,	//û�õ�
	input CLK,	//ʱ���ź�
	input IRWre,	//����Ĵ���дʹ��
	output reg[5:0] op,
	output reg[4:0] rs,
	output reg[4:0] rt,
	output reg[4:0] rd,
	output reg[15:0] immediate,	//ָ������ʱ�����
	output reg[25:0] address
);
	reg[7:0] mem[0:255];	//�½�һ��256λ���������ڴ���ָ��
	initial begin
		//��ʼ��
		op <= 0;
		rs <= 0;
		rt <= 0;
		rd <= 0;
		immediate <= 0;
		address <= 0;
		$readmemb("C:/Users/hm/Downloads/Vivado19/MulCPU2/input.txt",mem);
	end
	//�ӵ�ַȡֵ��Ȼ�����
	always@(posedge CLK or posedge IRWre)begin
		if (IRWre == 1)begin
			op = mem[IAddr][7:2];
			rs[4:3] = mem[IAddr][1:0];
			rs[2:0] = mem[IAddr + 1][7:5];
			rt = mem[IAddr + 1][4:0];
			rd = mem[IAddr + 2][7:3];
			immediate[15:8] = mem[IAddr + 2];
			immediate[7:0] = mem[IAddr + 3];
			//��ַ��ֵ
			address[25:21] = rs;
			address[20:16] = rt;
			address[15:0] = immediate;
		end
	end
endmodule
