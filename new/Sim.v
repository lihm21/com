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
        reg CLK;	//时钟信号
        reg Reset;	//置零信号
        MultipleCPU mcpu(CLK,Reset);
        initial begin
            CLK=	0;
            Reset=	1;	//刚开始设置pc为0
            #50;	//等待Reset完成
            CLK=	!CLK;	//下降沿，使PC先清零
            #50;
            Reset=	0;	//清除保持信号
            forever #50 begin	//产生时钟信号，周期为50s
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

//    // 实例化 MultipleCPU
//    MultipleCPU MultiCPU (
//        .CLK(CLK),
//        .Reset(Reset),
//        .DataInput(DataInput),
//        .DataOutput(DataOutput),
//        .AddressOutput(AddressOutput)
//    );

//    // 时钟生成
//    always begin
//        #5 CLK = ~CLK;
//    end

//    // 测试用例
//    initial begin
//        // 初始化信号
//        CLK = 0;
//        Reset = 1;

//        // 使能测试
//        #10 Reset = 0;
        
//        // 测试用例：加载 (load)
//        #10 DataInput = 32'h00000064; // Load 100 to R1
//        #10 DataInput = 32'h20010064; // Load 100 to R2
        
//        // 测试用例：算术运算
//        #10 DataInput = 32'h8001; // Add R1 and R2, result is 200
//        #10 DataInput = 32'h9001; // Sub R2 from R1, result is 0
//        #10 DataInput = 32'hA001; // Mul R1 and R2, result is 10000
//        #10 DataInput = 32'hB001; // Div R1 by R2, result is 1
        
//        // 测试用例：逻辑运算
//        #10 DataInput = 32'hC115; // Ori R1 and R2, result is 164
//        #10 DataInput = 32'hD015; // Andi R1 and R2, result is 0
		
//        // 测试用例：跳转
//        #10 DataInput = 32'h00010100; // Jump_IF R1 == R2 to 0x14
//        #10 DataInput = 32'h00010101; // Jump_IF R1 != R2 to 0x15

//        // 运行一段时间，观察波形
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

//    // 实例化 MultipleCPU
//    MultipleCPU MultiCPU (
//        .CLK(CLK),
//        .Reset(Reset),
//        .DataInput(DataInput),
////        .DataOutput(DataOutput),
////        .AddressOutput(AddressOutput)
//        .DataOut(DataOut),
//        .outAddress(outAddress)
//    );

//    // 时钟生成
//    always begin
//        #5 CLK = ~CLK;
//    end

//    // 测试用例
//    initial begin
//        // 初始化信号
//        CLK = 0;
//        Reset = 1;

//        // 使能测试
//        #5 Reset = 0;
        
//        // 测试用例
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

//        // 运行一段时间，观察波形
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
