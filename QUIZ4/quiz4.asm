	#include<p18f4550.inc>

		org		0x00
		goto	start
		org		0x08
		retfie	
		org		0x18
		retfie
		
Add1	clrf	PORTD
		movlw	B'00101010'
		xorwf	PORTD
		movf	0x01,W,A
		addwf	PORTD,F,A
		return
		
start	call	Add1
		end