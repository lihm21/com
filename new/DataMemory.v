`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/20 17:38:56
// Design Name: 
// Module Name: DataMemory
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


module DataMemory(
	input DataMemRW,
	input [31:0] DAddr,
	input [31:0] DataIn,
	output reg [31:0] DataOut
);
	reg [7:0] memory[0:255];
	integer i;
	initial  begin
		for (i = 0; i < 256; i = i + 1)memory[i] <= 0;
		for (i = 0; i < 32; i = i + 1)DataOut[i] <= 0;
	end
	always@(DAddr or DataMemRW)begin
		if (DataMemRW)begin
		   memory[DAddr] <= DataIn[31:24];
			memory[DAddr + 1] <= DataIn[23:16];
			memory[DAddr + 2] <= DataIn[15:8];
			memory[DAddr + 3] <= DataIn[7:0];
		end
		else begin
		   DataOut[31:24] <= memory[DAddr];
			DataOut[23:16] <= memory[DAddr + 1];
			DataOut[15:8] <= memory[DAddr + 2];
			DataOut[7:0] <= memory[DAddr + 3];
		end
	end
endmodule
