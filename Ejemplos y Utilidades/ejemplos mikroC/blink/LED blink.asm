
_main:

;LED blink.c,6 :: 		void main()  org 0x1000
;LED blink.c,8 :: 		TRISC = 0b00000001;
	MOVLW       1
	MOVWF       TRISC+0 
;LED blink.c,9 :: 		PORTC = 0b00000000;
	CLRF        PORTC+0 
;LED blink.c,11 :: 		while(1)
L_main0:
;LED blink.c,13 :: 		PORTC.f1 = 0;
	BCF         PORTC+0, 1 
;LED blink.c,14 :: 		delay_ms(1000);
	MOVLW       61
	MOVWF       R11, 0
	MOVLW       225
	MOVWF       R12, 0
	MOVLW       63
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	DECFSZ      R11, 1, 1
	BRA         L_main2
	NOP
	NOP
;LED blink.c,15 :: 		PORTC.f1 = 1;
	BSF         PORTC+0, 1 
;LED blink.c,16 :: 		delay_ms(1000);
	MOVLW       61
	MOVWF       R11, 0
	MOVLW       225
	MOVWF       R12, 0
	MOVLW       63
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
	NOP
	NOP
;LED blink.c,17 :: 		}
	GOTO        L_main0
;LED blink.c,19 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
