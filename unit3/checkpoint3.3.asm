// XMega65 Kernal Development Template
// Each function of the kernal is a no-args function
// The functions are placed in the SYSCALLS table surrounded by JMP and NOP
  .file [name="checkpoint3.3.bin", type="bin", segments="XMega65Bin"]
.segmentdef XMega65Bin [segments="Syscall, Code, Data, Stack, Zeropage"]
.segmentdef Syscall [start=$8000, max=$81ff]
.segmentdef Code [start=$8200, min=$8200, max=$bdff]
.segmentdef Data [startAfter="Code", min=$8200, max=$bdff]
.segmentdef Stack [min=$be00, max=$beff, fill]
.segmentdef Zeropage [min=$bf00, max=$bfff, fill]
  .label VIC_MEMORY = $d018
  .label SCREEN = $400
  .label COLS = $d800
  .const WHITE = 1
  // To save writing 0x4C and 0xEA all the time, we define them as constants
  .const JMP = $4c
  .const NOP = $ea
  .label p = $d
  .label mem_end = 9
  .label mem_start = 2
  .label current_screen_line = 7
  .label current_screen_x = 6
  .label current_screen_line_56 = 4
  .label current_screen_line_79 = 4
  .label current_screen_line_92 = 4
  .label current_screen_line_93 = 4
  .label current_screen_line_94 = 4
  .label current_screen_line_95 = 4
  .label current_screen_line_100 = 4
  .label current_screen_line_101 = 4
  .label current_screen_line_102 = 4
  .label current_screen_line_103 = 4
  .label current_screen_line_105 = 4
  .label current_screen_line_106 = 4
  .label current_screen_line_107 = 4
  .label current_screen_line_108 = 4
  lda #<0
  sta.z p
  sta.z p+1
  jsr main
  rts
.segment Code
main: {
    rts
}
CPUKIL: {
    jsr exit_hypervisor
    rts
}
exit_hypervisor: {
    // Trigger exit from Hypervisor mode 
    lda #1
    sta $d67f
    rts
}
UNDIFINED: {
    jsr exit_hypervisor
    rts
}
VF011WR: {
    jsr exit_hypervisor
    rts
}
VF011RD: {
    jsr exit_hypervisor
    rts
}
ALTTABKEY: {
    jsr exit_hypervisor
    rts
}
RESTORKEY: {
    jsr exit_hypervisor
    rts
}
PAGFAULT: {
    jsr exit_hypervisor
    rts
}
syscall63: {
    jsr exit_hypervisor
    rts
}
syscall62: {
    jsr exit_hypervisor
    rts
}
syscall61: {
    jsr exit_hypervisor
    rts
}
syscall60: {
    jsr exit_hypervisor
    rts
}
syscall59: {
    jsr exit_hypervisor
    rts
}
syscall58: {
    jsr exit_hypervisor
    rts
}
syscall57: {
    jsr exit_hypervisor
    rts
}
syscall56: {
    jsr exit_hypervisor
    rts
}
syscall55: {
    jsr exit_hypervisor
    rts
}
syscall54: {
    jsr exit_hypervisor
    rts
}
syscall53: {
    jsr exit_hypervisor
    rts
}
syscall52: {
    jsr exit_hypervisor
    rts
}
syscall51: {
    jsr exit_hypervisor
    rts
}
syscall50: {
    jsr exit_hypervisor
    rts
}
syscall49: {
    jsr exit_hypervisor
    rts
}
syscall48: {
    jsr exit_hypervisor
    rts
}
syscall47: {
    jsr exit_hypervisor
    rts
}
syscall46: {
    jsr exit_hypervisor
    rts
}
syscall45: {
    jsr exit_hypervisor
    rts
}
syscall44: {
    jsr exit_hypervisor
    rts
}
syscall43: {
    jsr exit_hypervisor
    rts
}
syscall42: {
    jsr exit_hypervisor
    rts
}
syscall41: {
    jsr exit_hypervisor
    rts
}
syscall40: {
    jsr exit_hypervisor
    rts
}
syscall39: {
    jsr exit_hypervisor
    rts
}
syscall38: {
    jsr exit_hypervisor
    rts
}
syscall37: {
    jsr exit_hypervisor
    rts
}
syscall36: {
    jsr exit_hypervisor
    rts
}
syscall35: {
    jsr exit_hypervisor
    rts
}
syscall34: {
    jsr exit_hypervisor
    rts
}
syscall33: {
    jsr exit_hypervisor
    rts
}
syscall32: {
    jsr exit_hypervisor
    rts
}
syscall31: {
    jsr exit_hypervisor
    rts
}
syscall30: {
    jsr exit_hypervisor
    rts
}
syscall29: {
    jsr exit_hypervisor
    rts
}
syscall28: {
    jsr exit_hypervisor
    rts
}
syscall27: {
    jsr exit_hypervisor
    rts
}
syscall26: {
    jsr exit_hypervisor
    rts
}
syscall25: {
    jsr exit_hypervisor
    rts
}
syscall24: {
    jsr exit_hypervisor
    rts
}
syscall23: {
    jsr exit_hypervisor
    rts
}
syscall22: {
    jsr exit_hypervisor
    rts
}
syscall21: {
    jsr exit_hypervisor
    rts
}
syscall20: {
    jsr exit_hypervisor
    rts
}
syscall19: {
    jsr exit_hypervisor
    rts
}
syscall18: {
    jsr exit_hypervisor
    rts
}
syscall17: {
    jsr exit_hypervisor
    rts
}
syscall16: {
    jsr exit_hypervisor
    rts
}
syscall15: {
    jsr exit_hypervisor
    rts
}
syscall14: {
    jsr exit_hypervisor
    rts
}
syscall13: {
    jsr exit_hypervisor
    rts
}
syscall12: {
    jsr exit_hypervisor
    rts
}
syscall11: {
    jsr exit_hypervisor
    rts
}
syscall10: {
    jsr exit_hypervisor
    rts
}
syscall9: {
    jsr exit_hypervisor
    rts
}
syscall8: {
    jsr exit_hypervisor
    rts
}
syscall7: {
    jsr exit_hypervisor
    rts
}
syscall6: {
    jsr exit_hypervisor
    rts
}
syscall5: {
    jsr exit_hypervisor
    rts
}
syscall4: {
    jsr exit_hypervisor
    rts
}
syscall3: {
    jsr exit_hypervisor
    rts
}
syscall2: {
    jsr exit_hypervisor
    rts
}
syscall1: {
    jsr exit_hypervisor
    rts
}
// Here are a couple sample SYSCALL handlers that just display a character on the screen
syscall0: {
    jsr exit_hypervisor
    rts
}
RESET: {
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
    lda #0
    sta.z current_screen_x
    lda #<$400
    sta.z current_screen_line_56
    lda #>$400
    sta.z current_screen_line_56+1
    lda #<MESSAGE
    sta.z print_screen.MES
    lda #>MESSAGE
    sta.z print_screen.MES+1
    jsr print_screen
    lda #<$400
    sta.z current_screen_line
    lda #>$400
    sta.z current_screen_line+1
    jsr print_nextline
    lda.z current_screen_line
    sta.z current_screen_line_100
    lda.z current_screen_line+1
    sta.z current_screen_line_100+1
    lda #0
    sta.z current_screen_x
    lda #<MESSAGE1
    sta.z print_screen.MES
    lda #>MESSAGE1
    sta.z print_screen.MES+1
    jsr print_screen
    jsr print_nextline
    jsr test_memory
    jsr detect_devices
    jsr exit_hypervisor
  __b1:
    jmp __b1
}
detect_devices: {
    lda #0
    sta.z current_screen_x
    lda #<$d000
    sta.z mem_start
    lda #>$d000
    sta.z mem_start+1
  __b1:
    lda.z mem_start+1
    cmp #>$dff0
    bne __b2
    lda.z mem_start
    cmp #<$dff0
    bne __b2
    jsr print_nextline
    lda.z current_screen_line
    sta.z current_screen_line_101
    lda.z current_screen_line+1
    sta.z current_screen_line_101+1
    lda #0
    sta.z current_screen_x
    lda #<MES
    sta.z print_screen.MES
    lda #>MES
    sta.z print_screen.MES+1
    jsr print_screen
    rts
  __b2:
    lda.z mem_start
    sta.z detect_vicii.address
    lda.z mem_start+1
    sta.z detect_vicii.address+1
    jsr detect_vicii
    cmp #1
    bne __b4
    lda.z current_screen_line
    sta.z current_screen_line_102
    lda.z current_screen_line+1
    sta.z current_screen_line_102+1
    lda #<MES1
    sta.z print_screen.MES
    lda #>MES1
    sta.z print_screen.MES+1
    jsr print_screen
    lda.z mem_start
    sta.z print_hex.value
    lda.z mem_start+1
    sta.z print_hex.value+1
    lda.z current_screen_line
    sta.z current_screen_line_92
    lda.z current_screen_line+1
    sta.z current_screen_line_92+1
    jsr print_hex
  __b4:
    lda #$10
    clc
    adc.z mem_start
    sta.z mem_start
    bcc !+
    inc.z mem_start+1
  !:
    jmp __b1
  .segment Data
    MES: .text "finished probing for devices"
    .byte 0
    MES1: .text " $"
    .byte 0
}
.segment Code
// print_hex(word zeropage($b) value)
print_hex: {
    .label __3 = $12
    .label __6 = $f
    .label value = $b
    ldx #0
  __b1:
    cpx #4
    bcc __b2
    lda #0
    sta hex+4
    lda #<hex
    sta.z print_screen.MES
    lda #>hex
    sta.z print_screen.MES+1
    jsr print_screen
    rts
  __b2:
    lda.z value+1
    cmp #>$a000
    bcc __b4
    bne !+
    lda.z value
    cmp #<$a000
    bcc __b4
  !:
    ldy #$c
    lda.z value
    sta.z __3
    lda.z value+1
    sta.z __3+1
    cpy #0
    beq !e+
  !:
    lsr.z __3+1
    ror.z __3
    dey
    bne !-
  !e:
    lda.z __3
    sec
    sbc #9
    sta hex,x
  __b5:
    asl.z value
    rol.z value+1
    asl.z value
    rol.z value+1
    asl.z value
    rol.z value+1
    asl.z value
    rol.z value+1
    inx
    jmp __b1
  __b4:
    ldy #$c
    lda.z value
    sta.z __6
    lda.z value+1
    sta.z __6+1
    cpy #0
    beq !e+
  !:
    lsr.z __6+1
    ror.z __6
    dey
    bne !-
  !e:
    lda.z __6
    clc
    adc #'0'
    sta hex,x
    jmp __b5
  .segment Data
    hex: .fill 5, 0
}
.segment Code
// print_screen(byte* zeropage($b) MES)
print_screen: {
    .label MES = $b
  __b1:
    ldy #0
    lda (MES),y
    cmp #0
    bne __b2
    rts
  __b2:
    ldy #0
    lda (MES),y
    ldy.z current_screen_x
    sta (current_screen_line_56),y
    inc.z MES
    bne !+
    inc.z MES+1
  !:
    inc.z current_screen_x
    jmp __b1
}
// detect_vicii(word zeropage($f) address)
detect_vicii: {
    .label address = $f
    .label v2 = $11
    .label i = $b
    ldy #$12
    lda (address),y
    tax
    lda #<1
    sta.z i
    lda #>1
    sta.z i+1
  // Read start address + $12 
  // Wait at least 64 microseconds. 
  __b1:
    lda.z i+1
    cmp #>$3e8
    bcc __b3
    bne !+
    lda.z i
    cmp #<$3e8
    bcc __b3
  !:
    ldy #$12
    lda (address),y
    sta.z v2
    cpx.z v2
    bcs b1
    jsr print_nextline
    lda.z current_screen_line
    sta.z current_screen_line_103
    lda.z current_screen_line+1
    sta.z current_screen_line_103+1
    lda #0
    sta.z current_screen_x
    lda #<MES
    sta.z print_screen.MES
    lda #>MES
    sta.z print_screen.MES+1
    jsr print_screen
    lda #1
    rts
  b1:
    lda #2
    rts
  __b3:
    inc.z i
    bne !+
    inc.z i+1
  !:
    jmp __b1
  .segment Data
    MES: .text "seems to be a vic-ii here at"
    .byte 0
}
.segment Code
print_nextline: {
    lda #$28
    clc
    adc.z current_screen_line
    sta.z current_screen_line
    bcc !+
    inc.z current_screen_line+1
  !:
    rts
}
test_memory: {
    .label __16 = $12
    lda.z current_screen_line
    sta.z current_screen_line_105
    lda.z current_screen_line+1
    sta.z current_screen_line_105+1
    lda #0
    sta.z current_screen_x
    lda #<MES
    sta.z print_screen.MES
    lda #>MES
    sta.z print_screen.MES+1
    jsr print_screen
    jsr print_nextline
    lda #<$800
    sta.z p
    lda #>$800
    sta.z p+1
    ldx #0
    txa
    sta.z current_screen_x
    lda #<$7fff
    sta.z mem_end
    lda #>$7fff
    sta.z mem_end+1
  __b1:
    lda.z p+1
    cmp.z mem_end+1
    bcc b1
    bne !+
    lda.z p
    cmp.z mem_end
    bcc b1
  !:
  __b8:
    lda.z current_screen_line
    sta.z current_screen_line_106
    lda.z current_screen_line+1
    sta.z current_screen_line_106+1
    lda #<MES2
    sta.z print_screen.MES
    lda #>MES2
    sta.z print_screen.MES+1
    jsr print_screen
    lda.z current_screen_line
    sta.z current_screen_line_94
    lda.z current_screen_line+1
    sta.z current_screen_line_94+1
    lda #<$800
    sta.z print_hex.value
    lda #>$800
    sta.z print_hex.value+1
    jsr print_hex
    lda.z current_screen_line
    sta.z current_screen_line_108
    lda.z current_screen_line+1
    sta.z current_screen_line_108+1
    lda #<MES3
    sta.z print_screen.MES
    lda #>MES3
    sta.z print_screen.MES+1
    jsr print_screen
    lda.z mem_end
    sta.z print_hex.value
    lda.z mem_end+1
    sta.z print_hex.value+1
    lda.z current_screen_line
    sta.z current_screen_line_95
    lda.z current_screen_line+1
    sta.z current_screen_line_95+1
    jsr print_hex
    jsr print_nextline
    rts
  b1:
    lda #0
  __b2:
    cmp #$ff
    bcc __b3
  __b5:
    cpx #1
    bne __b7
    jmp __b8
  __b7:
    inc.z p
    bne !+
    inc.z p+1
  !:
    jmp __b1
  __b3:
    ldy #0
    sta (p),y
    cmp (p),y
    beq __b4
    jsr print_nextline
    lda.z current_screen_line
    sta.z current_screen_line_107
    lda.z current_screen_line+1
    sta.z current_screen_line_107+1
    lda #0
    sta.z current_screen_x
    lda #<MES1
    sta.z print_screen.MES
    lda #>MES1
    sta.z print_screen.MES+1
    jsr print_screen
    lda.z p
    sta.z print_hex.value
    lda.z p+1
    sta.z print_hex.value+1
    lda.z current_screen_line
    sta.z current_screen_line_93
    lda.z current_screen_line+1
    sta.z current_screen_line_93+1
    jsr print_hex
    jsr print_nextline
    lda.z p
    sta.z __16
    lda.z p+1
    sta.z __16+1
    lda.z __16
    sec
    sbc #1
    sta.z mem_end
    lda.z __16+1
    sbc #0
    sta.z mem_end+1
    lda #0
    sta.z current_screen_x
    ldx #1
    jmp __b5
  __b4:
    clc
    adc #1
    jmp __b2
  .segment Data
    MES: .text "startring..."
    .byte 0
    MES1: .text "memory error at $"
    .byte 0
    MES2: .text "memory found between $"
    .byte 0
    MES3: .text " - $"
    .byte 0
}
.segment Code
// Copies the character c (an unsigned char) to the first num characters of the object pointed to by the argument str.
// memset(void* zeropage($f) str, byte register(X) c, word zeropage($b) num)
memset: {
    .label end = $b
    .label dst = $f
    .label num = $b
    .label str = $f
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
.segment Data
  MESSAGE: .text "checkpoing3.3 zhao0562"
  .byte 0
  MESSAGE1: .text "testing hardware"
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
  .word RESET
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
