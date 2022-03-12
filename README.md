# CPU
NTUST Computer Architecture

### Part1: R-Format

Instr[0]=>$t0($8)=496=$t0(317)+$t1(179)
![](https://github.com/naiyu0609/CPU/blob/main/CPU/R-format1.PNG)

Instr[1]=>$t1($9)=24=$t2(101)-$t4(77)
![](https://github.com/naiyu0609/CPU/blob/main/CPU/R-format2.PNG)

Instr[2]=>$t4($12)=160=$t5(320)/2
![](https://github.com/naiyu0609/CPU/blob/main/CPU/R-format3.PNG)

Instr[3]=>$t6($14)=160=$t7(10)*16
![](https://github.com/naiyu0609/CPU/blob/main/CPU/R-format4.PNG)

Instr[4]=>$t3($11)=125(01111101)=$t1(00011000)XOR$t2(01100101)
![](https://github.com/naiyu0609/CPU/blob/main/CPU/R-format5.PNG)

Instr[5]=>$t5($13)=32(00100000)=$t4(10100000)AND$t2(01100101)
![](https://github.com/naiyu0609/CPU/blob/main/CPU/R-format6.PNG)

### Part2: I-Format

Instr[6]=>{Memdata[12],Memdata[13],Memdata[14],Memdata[15]}={8’d0,8’d0,8’b00000001,8’b11110000}(496)
![](https://github.com/naiyu0609/CPU/blob/main/CPU/I-format1.PNG)

Instr[7]=>$s1($17)={Memdata[12],Memdata[13],Memdata[14],Memdata[15]}
![](https://github.com/naiyu0609/CPU/blob/main/CPU/I-format2.PNG)

Instr[8]=> $s2($18)={Memdata[14],Memdata[15],Memdata[16],Memdata[17]}
![](https://github.com/naiyu0609/CPU/blob/main/CPU/I-format3.PNG)

Instr[9]=> {Memdata[103],Memdata[104],Memdata[105],Memdata[106]}={8’d0,8’d0,8’b00000001,8’b11110000}(496)
![](https://github.com/naiyu0609/CPU/blob/main/CPU/I-format4.PNG)

Instr[10]=> {Memdata[28],Memdata[29],Memdata[30],Memdata[31]}={8’d0,8’d0,8’d0,8’b00010011}(19)
![](https://github.com/naiyu0609/CPU/blob/main/CPU/I-format5.PNG)

Instr[11]=>$s4($20)=130=$s3(19)+111
![](https://github.com/naiyu0609/CPU/blob/main/CPU/I-format6.PNG)

Instr[12]=>$s6($22)=40=$s5(13)+27
![](https://github.com/naiyu0609/CPU/blob/main/CPU/I-format7.PNG)

Instr[13]=>$s1($17)=31=$s6(40)-9
![](https://github.com/naiyu0609/CPU/blob/main/CPU/I-format8.PNG)

Instr[14]=>$s7($23)=26=$s1(31)-5
![](https://github.com/naiyu0609/CPU/blob/main/CPU/I-format8.PNG)

### Part3:Beq&Jump
![](https://github.com/naiyu0609/CPU/blob/main/CPU/Beq%26jump.PNG)

### Data Path
Control 的 Output 訊 號 若 為 1 會 標 記 有 顏 色
                       若 為 0 則 不 標 記 顏 色

R-Type
![](https://github.com/naiyu0609/CPU/blob/main/CPU/R-format.PNG)

LW
![](https://github.com/naiyu0609/CPU/blob/main/CPU/LW.PNG)

SW
![](https://github.com/naiyu0609/CPU/blob/main/CPU/SW.PNG)

addi/subi
![](https://github.com/naiyu0609/CPU/blob/main/CPU/addi_subi.PNG)

Branch
![](https://github.com/naiyu0609/CPU/blob/main/CPU/branch.PNG)

Jump
![](https://github.com/naiyu0609/CPU/blob/main/CPU/jump.PNG)
