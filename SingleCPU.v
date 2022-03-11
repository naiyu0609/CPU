module SingleCPU(
 	input [31:0] Addr_in,//run instruction address
 	input clk,//clock
 	output [31:0] Addr_o//next instruction address
);
wire [31:0]NextPC;//run instruction address+4
wire [31:0]BranchPC;//branch address
wire [31:0]NBPC;//BranchPC or NextPC
wire [31:0]JumpPC;//jump address
wire [31:0]RSdata;//the data of Register1 
wire [31:0]RTdata;//the data of Register2
wire [31:0]RDdata;//input data to RF
wire [31:0]ALUSrc2;//inpur ALU source2
wire [31:0]ALUResult;//Result of ALU
wire [31:0]Instruction;//Instruction
wire [31:0]DM_data;//Memory output data
wire [5:0]operation;//ALU operation
wire [4:0]WriteRegister;//Register input data
wire [31:0]immediate;//SE output
wire [2:0]ALUOp;//comfirm ALU operation
wire zero;//zero flag
wire carry;//carry flag
wire RegDst;//the signal for RD_address
wire MemRead;//the signal for memory read or not
wire MemtoReg;//the signal for which data(ALU result or memory data) is write data in RF
wire MemWrite;//the signal for memory write or not
wire ALUSrc;//the signal for comfirm ALU source2
wire RegWrite;//the signal for register write or not
wire Jump;//the signal for jump or not
wire Branch;//the signal for branch or not

assign JumpPC={NextPC[31:28],Instruction[25:0],2'd0};//Jump address 32-bit

Adder add1(32'd4,Addr_in,NextPC);
IM IM(Addr_in,Instruction);
MUX5b MUX1(Instruction[15:11],Instruction[20:16],RegDst,WriteRegister);
SE SE(Instruction[15:0],immediate);
Control Ctrl(Instruction[31:26],ALUOp,RegDst,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite,Jump,Branch);
RF RF(clk,RegWrite,Instruction[25:21],Instruction[20:16],WriteRegister,RSdata,RTdata,RDdata);
Adder add2(immediate<<2,NextPC,BranchPC);
MUX32b MUX2(immediate,RTdata,ALUSrc,ALUSrc2);
ALUctrl ALUctrl(Instruction[5:0],ALUOp,operation);
ALU ALU(RSdata,ALUSrc2,operation,Instruction[10:6],ALUResult,zero,carry);
MUX32b MUX3(BranchPC,NextPC,Branch&zero,NBPC);
MUX32b MUX4(JumpPC,NBPC,Jump,Addr_o);
DM DM(clk,ALUResult,RTdata,MemRead,MemWrite,DM_data);
MUX32b MUX5(DM_data,ALUResult,MemtoReg,RDdata);

endmodule

