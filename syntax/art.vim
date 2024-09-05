" Vim syntax file
" Language: The rat
" Maintainer: jdose100
" Revision: 0.1

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syn case ignore
syn keyword Statement rjmp ijmp eijmp jmp rcall eicall call ret reti
syn keyword Statement syn keyword avrOpcode brcc brcs brvs brvc brmi brpl breq brne brhs brhc
syn keyword Statement brts brtc brie brid brlo brlt brge brsh brbs brbc
syn keyword Statement cpse sbrc sbrs sbic sbis com neg inc dec tst clr ser
syn keyword Statement add adc adiw sub subi sbc sbci sbiw cp cpc cpi
syn keyword Statement and andi or ori eor sbr cbr mul muls mulsu fmul fmuls fmulsu
syn keyword Statement mov movw ldi lds ld ldd sts st std lpm elpm spm espm
syn keyword Statement in out push pop lsl lsr rol ror asr swap
syn keyword Statement bset bclr sbi cbi bst bld sec clc sen cln sez clz
syn keyword Statement sei cli ses cls sev clv set clt seh clh nop sleep wdr
syn keyword Statement loop if else mem prg use as ptr prgptr byte word dword
syn keyword Statement var struct pin ddr port proc struct inline extern
syn keyword Statement vectors default
syn keyword Function high low bitmask sizeof

syn match Keyword "\$org\>"

syn match PreCondit "#if\>"
syn match PreCondit "#ifdef\>"
syn match PreCondit "#ifndef\>"
syn match PreCondit "#endif\>"

syn match Include "#include\>"

syn match Define "#define\>"
syn match Define "#undef\>"

syn match Number "\<0[0-7]*\>" " octal
syn match Number "\<[0-7]\+[oO]\>" " octal
syn match Number "\<[1-9][0-9]*\>" " decimal
syn match Number "\<0[Xx][0-9a-fA-F]\+\>" " hexadecimal
syn match Number "\<[0-9][0-9a-fA-F]*[Hh]\>" " hexadecimal
syn match Number "\$[0-9a-fA-F]\+\>" " hexadecimal
syn match Number "\<0[Bb][01]\+\>" " binary
syn match Number "\<[0-1]\+[bB]\>" " binary

syn match Type "\<[Rr]\(30\|31\|[0-2][0-9]\|[0-9]\)\>"
syn match Comment ";.*" contains=avrTodo
syn region String start=+"+ end=+"+

syn keyword Structure SREG SPH SPL GIMSK GIFR TIMSK TIFR MCUCR MCUSR
syn keyword Structure TCCR0 TCNT0 TCCR1A TCCR1B TCNT1H TCNT1L ADCH ADCL SP
syn keyword Structure OCR1AH OCR1AL OCR1BH OCR1BL ICR1H ICR1L ACSR ADMUX ADCSR
syn keyword Structure TCCR2 TCNT2 OCR2 ASSR WDTCR EEARH EEARL EEDR EECR
syn keyword Structure SPDR SPSR SPCR UDR USR UCR UBRR UBRRH UBRRL UCSRB UCSRA
syn match Structure "\<PORT[ABCDEF]\>"
syn match Structure "\<DDR[ABCDEF]\>"
syn match Structure "\<PIN[ABCDEF]\>"

syn keyword Special INT1 INT0 INTF1 INTF0
syn keyword Special OCIE2 TOIE2 TICIE1 OCIE1A OCIE1B TOIE1 TOIE0
syn keyword Special OCF2 TOV2 ICF1 OCF1A OCF1B TOV1 TOV0 PWM2 COM21 COM20 CTC2
syn keyword Special SE SM1 SM0 ISC11 ISC10 ISC01 ISC00 CS20 CS21 CS22
syn keyword Special EXTRF PORF CS01 CS02 CS00 COM1A1 COM1A0 COM1B1 COM1B0 
syn keyword Special ICNC1 ICES1 CTC1 CS12 CS11 CS10 PWM10 PWM11
syn keyword Special AS2 TCN2UB OCR2UB TCR2UB WDTOE WDE WDP2 WDP1 WDP0
syn keyword Special EERIE EEMWE EEWE EERE RXC TXC UDRE FE OR
syn keyword Special SPIF WCOL SPIE SPE DORD MSTR CPOL CPHA SPR1 SPR0 
syn keyword Special RXCIE TXCIE UDRIE RXEN TXEN CHR9 RXB8 TXB8
syn keyword Special ACD AC0 ACI ACIE ACIC ACIS1 ACIS0 MUX2 MUX1 MUX0
syn keyword Special ADEN ADSC ADFR ADIF ADIE ADPS2 ADPS1 ADPS0
syn match Special "\<ADC[0-9]\>"
syn match Special "\<EEAR[0-7]\>"
syn match Special "\<PIN[ABCDEF][0-7]\>"
syn match Special "\<DD[ABCDEF][0-7]\>"
syn match Special "\<P[ABCDEF][0-7]\>"
syn match Special "\<P[ABCDEF][0-7]\>"
syn match Special "\<PORT[ABCDEF][0-7]\>"
syn match Special "\<SP[0-9]\>"

let b:current_syntax = "art"
