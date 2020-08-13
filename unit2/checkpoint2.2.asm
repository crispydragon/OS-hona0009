// XMega65 Kernal Development Template
// Each function of the kernal is a no-args function
// The functions are placed in the SYSCALLS table surrounded by JMP and NOP
  .file [name="checkpoint2.2.bin", type="bin", segments="XMega65Bin"]
.segmentdef XMega65Bin [segments="Syscall, Code, Data, Stack, Zeropage"]
.segmentdef Syscall [start=$8000, max=$81ff]
.segmentdef Code [start=$8200, min=$8200, max=$bdff]
.segmentdef Data [startAfter="Code", min=$8200, max=$bdff]
.segmentdef Stack [min=$be00, max=$beff, fill]
.segmentdef Zeropage [min=$bf00, max=$bfff, fill]
  // Some definitions of addresses and special values that this program uses
  .label RASTER = $d012
  .label VIC_MEMORY = $d018
  .label SCREEN = $400
  .label BGCOL = $d021
  .label COLS = $d800
  .const BLACK = 0
  .const WHITE = 1
  // To save writing 0x4C and 0xEA all the time, we define them as constants
  .const JMP = $4c
  .const NOP = $ea
.segment Code
main: {
    .label sc = 4
    .label msg = 2
    // Initialize screen memory, and select correct font
    lda #$14
    sta VIC_MEMORY
    ldx #' '
    lda #<SCREEN
    sta.z memset.str
    lda #>SCREEN
    sta.z memset.str+1
    lda #<$28*$19
    sta.z memset.num
    lda #>$28*$19
    sta.z memset.num+1
    jsr memset
    ldx #WHITE
    lda #<COLS
    sta.z memset.str
    lda #>COLS
    sta.z memset.str+1
    lda #<$28*$19
    sta.z memset.num
    lda #>$28*$19
    sta.z memset.num+1
    jsr memset
    lda #<SCREEN+$28
    sta.z sc
    lda #>SCREEN+$28
    sta.z sc+1
    lda #<MESSAGE
    sta.z msg
    lda #>MESSAGE
    sta.z msg+1
  // The messag to display
  // A simple copy routine to copy the string
  __b1:
    ldy #0
    lda (msg),y
    cmp #0
    bne __b2
  __b3:
    lda #$36
    cmp RASTER
    beq __b4
    lda #$42
    cmp RASTER
    beq __b4
    lda #BLACK
    sta BGCOL
    jmp __b3
  __b4:
    lda #WHITE
    sta BGCOL
    jmp __b3
  __b2:
    ldy #0
    lda (msg),y
    sta (sc),y
    inc.z sc
    bne !+
    inc.z sc+1
  !:
    inc.z msg
    bne !+
    inc.z msg+1
  !:
    jmp __b1
}
// Copies the character c (an unsigned char) to the first num characters of the object pointed to by the argument str.
// memset(void* zeropage(4) str, byte register(X) c, word zeropage(2) num)
memset: {
    .label end = 2
    .label dst = 4
    .label num = 2
    .label str = 4
    lda.z num
    bne !+
    lda.z num+1
    beq __breturn
  !:
    lda.z end
    clc
    adc.z str
    sta.z end
    lda.z end+1
    adc.z str+1
    sta.z end+1
  __b2:
    lda.z dst+1
    cmp.z end+1
    bne __b3
    lda.z dst
    cmp.z end
    bne __b3
  __breturn:
    rts
  __b3:
    txa
    ldy #0
    sta (dst),y
    inc.z dst
    bne !+
    inc.z dst+1
  !:
    jmp __b2
}
CPUKIL: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
UNDIFINED: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
VF011WR: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
VF011RD: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
ALTTABKEY: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
RESTORKEY: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
PAGFAULT: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall63: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall62: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall61: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall60: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall59: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall58: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall57: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall56: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall55: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall54: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall53: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall52: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall51: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall50: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall49: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall48: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall47: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall46: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall45: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall44: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall43: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall42: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall41: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall40: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall39: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall38: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall37: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall36: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall35: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall34: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall33: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall32: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall31: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall30: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall29: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall28: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall27: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall26: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall25: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall24: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall23: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall22: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall21: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall20: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall19: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall18: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall17: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall16: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall15: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall14: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall13: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall12: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall11: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall10: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall9: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall8: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall7: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall6: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall5: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall4: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall3: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall2: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
syscall1: {
    lda #'>'
    sta SCREEN+$4f
    rts
}
// Here are a couple sample SYSCALL handlers that just display a character on the screen
syscall0: {
    lda #'<'
    sta SCREEN+$4e
    rts
}
.segment Data
  // Some text to display
  MESSAGE: .text "Checkpoing2.2 Zhao0562"
  .byte 0
.segment Syscall
  // Now we can have a nice table of up to 64 SYSCALL handlers expressed
  // in a fairly readable and easy format.
  // Each line is an instance of the struct SysCall from above, with the JMP
  // opcode value, the address of the handler routine and the NOP opcode value.
  SYSCALLS: .byte JMP
  .word syscall0
  .byte NOP, JMP
  .word syscall1
  .byte NOP, JMP
  .word syscall2
  .byte NOP, JMP
  .word syscall3
  .byte NOP, JMP
  .word syscall4
  .byte NOP, JMP
  .word syscall5
  .byte NOP, JMP
  .word syscall6
  .byte NOP, JMP
  .word syscall7
  .byte NOP, JMP
  .word syscall8
  .byte NOP, JMP
  .word syscall9
  .byte NOP, JMP
  .word syscall10
  .byte NOP, JMP
  .word syscall11
  .byte NOP, JMP
  .word syscall12
  .byte NOP, JMP
  .word syscall13
  .byte NOP, JMP
  .word syscall14
  .byte NOP, JMP
  .word syscall15
  .byte NOP, JMP
  .word syscall16
  .byte NOP, JMP
  .word syscall17
  .byte NOP, JMP
  .word syscall18
  .byte NOP, JMP
  .word syscall19
  .byte NOP, JMP
  .word syscall20
  .byte NOP, JMP
  .word syscall21
  .byte NOP, JMP
  .word syscall22
  .byte NOP, JMP
  .word syscall23
  .byte NOP, JMP
  .word syscall24
  .byte NOP, JMP
  .word syscall25
  .byte NOP, JMP
  .word syscall26
  .byte NOP, JMP
  .word syscall27
  .byte NOP, JMP
  .word syscall28
  .byte NOP, JMP
  .word syscall29
  .byte NOP, JMP
  .word syscall30
  .byte NOP, JMP
  .word syscall31
  .byte NOP, JMP
  .word syscall32
  .byte NOP, JMP
  .word syscall33
  .byte NOP, JMP
  .word syscall34
  .byte NOP, JMP
  .word syscall35
  .byte NOP, JMP
  .word syscall36
  .byte NOP, JMP
  .word syscall37
  .byte NOP, JMP
  .word syscall38
  .byte NOP, JMP
  .word syscall39
  .byte NOP, JMP
  .word syscall40
  .byte NOP, JMP
  .word syscall41
  .byte NOP, JMP
  .word syscall42
  .byte NOP, JMP
  .word syscall43
  .byte NOP, JMP
  .word syscall44
  .byte NOP, JMP
  .word syscall45
  .byte NOP, JMP
  .word syscall46
  .byte NOP, JMP
  .word syscall47
  .byte NOP, JMP
  .word syscall48
  .byte NOP, JMP
  .word syscall49
  .byte NOP, JMP
  .word syscall50
  .byte NOP, JMP
  .word syscall51
  .byte NOP, JMP
  .word syscall52
  .byte NOP, JMP
  .word syscall53
  .byte NOP, JMP
  .word syscall54
  .byte NOP, JMP
  .word syscall55
  .byte NOP, JMP
  .word syscall56
  .byte NOP, JMP
  .word syscall57
  .byte NOP, JMP
  .word syscall58
  .byte NOP, JMP
  .word syscall59
  .byte NOP, JMP
  .word syscall60
  .byte NOP, JMP
  .word syscall61
  .byte NOP, JMP
  .word syscall62
  .byte NOP, JMP
  .word syscall63
  .byte NOP
  // In this example we had only two SYSCALLs defined, so rather than having
  // another 62 lines, we can just ask KickC to make the TRAP table begin
  // at the next multiple of $100, i.e., at $8100.
  .align $100
  SYSCALL_RESET: .byte JMP
  .word main
  .byte NOP, JMP
  .word PAGFAULT
  .byte NOP, JMP
  .word RESTORKEY
  .byte NOP, JMP
  .word ALTTABKEY
  .byte NOP, JMP
  .word VF011RD
  .byte NOP, JMP
  .word VF011WR
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word UNDIFINED
  .byte NOP, JMP
  .word CPUKIL
  .byte NOP
