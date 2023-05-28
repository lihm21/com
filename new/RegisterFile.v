`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/20 17:43:49
// Design Name: 
// Module Name: RegisterFile
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


module RegisterFile(
	input CLK,	//ʱ��
	input RegWre,	//дʹ���źţ�Ϊ1ʱ����ʱ��������д��
	input [4:0] rs,	//rs�Ĵ�����ַ����˿�
	input [4:0] rt,	//rt�Ĵ�����ַ����˿�
	input [4:0] WriteReg,	//������д��ļĴ����˿ڣ����ַ��Դrt��rd�ֶ�
	input [31:0] WriteData,	//д��Ĵ�������������˿�
	output [31:0] ReadData1,	//rs��������˿�
	output [31:0] ReadData2	//rt��������˿�
);
	reg [31:0] register[0:31];  //�½�32���Ĵ��������ڲ���
	//��ʼʱ����32���Ĵ�����ReadDataȫ����ֵΪ0
	integer i;
	initial begin
		for(i = 0; i < 32; i = i + 1)  register[i] <= 0;
	end
	//ֱ�Ӷ��Ĵ���
	assign ReadData1 = register[rs];
	assign ReadData2 = register[rt];
	//�����źŲ����Ĵ���
	always@(posedge CLK)begin
		//����Ĵ�����Ϊ0������RegWreΪ�棬д������
		if (RegWre && WriteReg != 0)  register[WriteReg] = WriteData;
	end
endmodule
