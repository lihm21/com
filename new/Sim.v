`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/20 17:48:24
// Design Name: 
// Module Name: Sim
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

    
    module Sim;
        reg CLK;	//ʱ���ź�
        reg Reset;	//�����ź�
        MultipleCPU mcpu(CLK,Reset);
        initial begin
            CLK=	0;
            Reset=	1;	//�տ�ʼ����pcΪ0
            #50;	//�ȴ�Reset���
            CLK=	!CLK;	//�½��أ�ʹPC������
            #50;
            Reset=	0;	//��������ź�
            forever #50 begin	//����ʱ���źţ�����Ϊ50s
                CLK=	!CLK;
            end
        end
    endmodule


//module tb();
//    reg CLK;
//    reg Reset;
//    wire[31:0] DataOutput;
//    wire[31:0] AddressOutput;
//    reg[31:0] DataInput;

//    // ʵ���� MultipleCPU
//    MultipleCPU MultiCPU (
//        .CLK(CLK),
//        .Reset(Reset),
//        .DataInput(DataInput),
//        .DataOutput(DataOutput),
//        .AddressOutput(AddressOutput)
//    );

//    // ʱ������
//    always begin
//        #5 CLK = ~CLK;
//    end

//    // ��������
//    initial begin
//        // ��ʼ���ź�
//        CLK = 0;
//        Reset = 1;

//        // ʹ�ܲ���
//        #10 Reset = 0;
        
//        // �������������� (load)
//        #10 DataInput = 32'h00000064; // Load 100 to R1
//        #10 DataInput = 32'h20010064; // Load 100 to R2
        
//        // ������������������
//        #10 DataInput = 32'h8001; // Add R1 and R2, result is 200
//        #10 DataInput = 32'h9001; // Sub R2 from R1, result is 0
//        #10 DataInput = 32'hA001; // Mul R1 and R2, result is 10000
//        #10 DataInput = 32'hB001; // Div R1 by R2, result is 1
        
//        // �����������߼�����
//        #10 DataInput = 32'hC115; // Ori R1 and R2, result is 164
//        #10 DataInput = 32'hD015; // Andi R1 and R2, result is 0
		
//        // ������������ת
//        #10 DataInput = 32'h00010100; // Jump_IF R1 == R2 to 0x14
//        #10 DataInput = 32'h00010101; // Jump_IF R1 != R2 to 0x15

//        // ����һ��ʱ�䣬�۲첨��
//        #100 $finish;
//    end
//endmodule

//module Sim();
//    reg CLK;
//    reg Reset;
////    wire[31:0] DataOutput;
//    wire[31:0] DataOut;
////    wire[31:0] AddressOutput;
//    wire[31:0] outAddress;
//    reg[31:0] DataInput;

//    // ʵ���� MultipleCPU
//    MultipleCPU MultiCPU (
//        .CLK(CLK),
//        .Reset(Reset),
//        .DataInput(DataInput),
////        .DataOutput(DataOutput),
////        .AddressOutput(AddressOutput)
//        .DataOut(DataOut),
//        .outAddress(outAddress)
//    );

//    // ʱ������
//    always begin
//        #5 CLK = ~CLK;
//    end

//    // ��������
//    initial begin
//        // ��ʼ���ź�
//        CLK = 0;
//        Reset = 1;

//        // ʹ�ܲ���
//        #5 Reset = 0;
        
//        // ��������
//        DataInput = 32'h00000000; // Init DataInput

//        #2  DataInput = 32'h00000064; // Load 100 to R1
//        #2  DataInput = 32'h20010064; // Load 100 to R2

//        #2 DataInput = 32'h8001; // Add R1 and R2, result is 200
//        #2 DataInput = 32'h9001; // Sub R2 from R1, result is 0
//        #2 DataInput = 32'hA001; // Mul R1 and R2, result is 10000
//        #2 DataInput = 32'hB001; // Div R1 by R2, result is 1

//        #2 DataInput = 32'hC115; // Ori R1 and R2, result is 164
//        #2 DataInput = 32'hD015; // Andi R1 and R2, result is 0

//        #2 DataInput = 32'h00010100; // Jump_IF R1 == R2 to 0x14
//        #2 DataInput = 32'h00010101; // Jump_IF R1 != R2 to 0x15

//        // ����һ��ʱ�䣬�۲첨��
//        #50 $finish;
//    end
//endmodule



//module tb;

//    // Inputs
//    reg CLK;
//    reg Reset;
   
//    // Outputs
//    wire [5:0] op;
//    wire [4:0] rs;
//    wire [4:0] rt;
//    wire [4:0] rd;
//    wire [15:0] immediate;
//    wire [31:0] ReadData1;
//    wire [31:0] ReadData2;
//    wire [31:0] WriteData;
//    wire [31:0] DataOut;
//    wire [31:0] currentAddress;
//    wire [31:0] newAddress;
//    wire [31:0] result;
//    wire PCWre;

//    // Instantiate the Unit Under Test (UUT)
//    multi_cycle_cpu uut (
//        .CLK(CLK), 
//        .Reset(Reset), 
//        .op(op), 
//        .rs(rs), 
//        .rd(rd), 
//        .immediate(immediate), 
//        .ReadData1(ReadData1), 
//        .ReadData2(ReadData2), 
//        .WriteData(WriteData), 
//        .DataOut(DataOut), 
//        .currentAddress(currentAddress), 
//        .newAddress(newAddress), 
//        .result(result),
//        .PCWre(PCWre)
//    );

//    initial begin
//        // Initialize Inputs
//        CLK = 0;
//        Reset = 0;


//        // Wait 100 ns for global reset to finish
//        #100;
//      Reset = 1;
//        // Add stimulus here
//    end
//   always #5 CLK=~CLK;
//endmodule
