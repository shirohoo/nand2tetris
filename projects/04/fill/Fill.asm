// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(INPUTCHECK)
    @KBD
    D=M // 키보드 입력을 받는다. 입력이 없다면 D==0

    @BLACK 
    D;JGT // 키보드 입력 값이 0보다 크면 BLACK으로 점프

    @WHITE 
    D;JEQ // 키보드 입력 값이 0이면 WHITE로 점프

    @INPUTCHECK
    0;JMP // 이도저도 아니면 다시 처음으로

(BLACK)
    @SCREEN
    M=-1 // 화면을 검은색으로 칠한다

    @INPUTCHECK
    0;JMP // 다시 INPUTCHECK로 점프 

(WHITE)
    @SCREEN
    M=0 // 화면을 하얀색으로 칠한다

    @INPUTCHECK
    0;JMP // 다시 INPUTCHECK로 점프 