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
	input CLK,	//时钟
	input RegWre,	//写使能信号，为1时，在时钟上升沿写入
	input [4:0] rs,	//rs寄存器地址输入端口
	input [4:0] rt,	//rt寄存器地址输入端口
	input [4:0] WriteReg,	//将数据写入的寄存器端口，其地址来源rt或rd字段
	input [31:0] WriteData,	//写入寄存器的数据输入端口
	output [31:0] ReadData1,	//rs数据输出端口
	output [31:0] ReadData2	//rt数据输出端口
);
	reg [31:0] register[0:31];  //新建32个寄存器，用于操作
	//初始时，将32个寄存器和ReadData全部赋值为0
	integer i;
	initial begin
		for(i = 0; i < 32; i = i + 1)  register[i] <= 0;
	end
	//直接读寄存器
	assign ReadData1 = register[rs];
	assign ReadData2 = register[rt];
	//接受信号并读寄存器
	always@(posedge CLK)begin
		//如果寄存器不为0，并且RegWre为真，写入数据
		if (RegWre && WriteReg != 0)  register[WriteReg] = WriteData;
	end
endmodule
