// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here
@R2
M=0 // int R2 = 0;

@i
M=0 // int i = 0;

(LOOP)
    @i
    D=M // D = i;

    @R0
    D=D-M // if((D - R0) == 0) then end the loop else multiply

    @END
    D;JEQ // loop end

    @R1
    D=M // D = R1;

    @R2
    M=D+M // R2 += D;

    @i
    M=M+1 // i++;

    @LOOP
    0;JMP // loop continue
(END)
    @END
    0;JMP // terminate