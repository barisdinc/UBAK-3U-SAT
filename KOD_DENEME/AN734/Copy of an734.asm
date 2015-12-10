;*********************************************************************
;   Filename:	slave.asm                                        
;   Date:	12/04/2000                                           
;   Revision:	0.50                                                 
;
;   Author:	Matt Bennett, much taken from the Microchip App. note:
;   AN734, :"Using the PICmicro SSP for Slave I2C Communication"
;   by Stephen Bowling ofMicrochip Technology
;                                    
;   There is a set of DIP switches connected to PORTD and a LED
;   LED attached to RA4 (pulled up to VCC)  When the high nybble of
;   the I2C recieved byte is equal to 0x5, it lights the LED (which 
;   starts lit, actually)  It then sends the byte recieved back when
;   an I2C read is initiated by the Master.                                
;*********************************************************************
;
; The receive buffer is stored in the variable 'RX_Buffer'.
; The transmit buffer is stored in the variable 'TX_Buffer'.
;---------------------------------------------------------------------
; Include Files
;---------------------------------------------------------------------

LIST      p=16F877 

#include <p16f877.inc>	; Change to device that you are using.
	__config _CP_OFF&_PWRTE_ON&_WDT_ON&_HS_OSC&_LVP_OFF&_BODEN_OFF&_CPD_OFF
	errorlevel -302	
;---------------------------------------------------------------------
;Constant Definitions
;---------------------------------------------------------------------

#define	ramstart_0	0x20
#define	ramstart_1	0xA0
#define ramstart_2	0x110
#define	ramstart_3	0x1A0
#define	unbanked	0x71	; plus one for ICD

;comm_status definitions

#define	TX_buffer_full	0x00
#define	RX_buffer_full	0x01
#define	TX_no_data	0x02

;---------------------------------------------------------------------
; Variable declarations
;---------------------------------------------------------------------

	cblock unbanked
WREGsave
STATUSsave
FSRsave	
PCLATHsave
comm_status
RX_buffer		; Holds rec'd byte from master
TX_buffer		; Holds byte to be transmitted to master
	endc

	cblock ramstart_0
Temp

	endc	

;---------------------------------------------------------------------
; Vectors
;---------------------------------------------------------------------

	org	0x00
	nop			
	goto	Startup	
	
	org	0x04			
;---------------------------------------------------------------------
; Interrupt Code
;---------------------------------------------------------------------

ISR
	movwf	WREGsave	; Save WREG
	movfw	STATUS		; Get STATUS register
	banksel	STATUSsave	; Switch banks, if needed.
	movwf	STATUSsave	; Save the STATUS register
	movfw	PCLATH		;
	movwf	PCLATHsave	; Save PCLATH
	movfw	FSR		;
	movwf	FSRsave		; Save FSR

	banksel PIR1
	btfss	PIR1,SSPIF	; Is this a SSP interrupt?	
	goto	$		; No, just trap here.
	bcf	PIR1,SSPIF

;---------------------------------------------------------------------
SSP_Handler
;---------------------------------------------------------------------
;	The I2C code below checks for 5 states:
;---------------------------------------------------------------------
;	State 1:  	I2C write operation, last byte was an address byte.
;
;	SSPSTAT bits:  	S = 1, D_A = 0, R_W = 0, BF = 1
;
;	State 2:	  I2C write operation, last byte was a data byte.
;
;	SSPSTAT bits:	  S = 1, D_A = 1, R_W = 0, BF = 1
;
;	State 3:	  I2C read operation, last byte was an address byte.
;
;	SSPSTAT bits:	  S = 1, D_A = 0, R_W = 1, BF = 0
;
;	State 4:	  I2C read operation, last byte was a data byte.
;
;	SSPSTAT bits:	  S = 1, D_A = 1, R_W = 1, BF = 0
;
;	State 5:  Slave I2C logic reset by NACK from master.
;	
;	SSPSTAT bits:  S = 1, D_A = 1, R_W = 0, BF = 0
;
; For convenience, WriteI2C and ReadI2C functions have been used.
;----------------------------------------------------------------------

	banksel	SSPSTAT
	movfw	SSPSTAT		; Get the value of SSPSTAT
	andlw	b'00101101'	; Mask out unimportant bits in SSPSTAT.
	banksel	Temp		; Put masked value in Temp
	movwf	Temp		; for comparision checking.

State1:				; Write operation, last byte was an
	movlw	b'00001001'	; address, buffer is full.
	xorwf	Temp,W		; 
	btfss	STATUS,Z	; Are we in State1?
	goto	State2		; No, check for next state.....
	
	banksel	SSPBUF
	movfw	SSPBUF
	goto	end_ISR	
	
State2:				; Write operation, last byte was data,
	movlw	b'00101001'	; buffer is full.
	xorwf	Temp,W
	btfss	STATUS,Z	; Are we in State2?
	goto	State3		; No, check for next state.....
		
	banksel	SSPBUF
	movfw	SSPBUF
	banksel	RX_buffer
	movwf	RX_buffer
	banksel	comm_status
	bsf	comm_status,RX_buffer_full
	goto	end_ISR	
	
State3:				; Read operation, last byte was an
	movlw	b'00001100'	; address, buffer is empty.
	xorwf	Temp,W
	btfss	STATUS,Z	; Are we in State3?
	goto	State4		; No, check for next state.....
	
	btfss	comm_status,TX_buffer_full
	bsf	comm_status,TX_no_data
	movfw	TX_buffer
	call	WriteI2C
	bcf	comm_status,TX_buffer_full
	goto	end_ISR	
	
State4:				; Read operation, last byte was data,
	movlw	b'00101100'	; buffer is empty.
	xorwf	Temp,W
	btfss	STATUS,Z	; Are we in State4?
	goto	State5		; No, check for next state....
	
	movlw	0xFF
	call	WriteI2C	; Write to SSPBUF
	goto	end_ISR	

State5:
	movlw	b'00101000'	; A NACK was received when transmitting
	xorwf	Temp,W		; data back from the master.  Slave logic
	btfss	STATUS,Z	; is reset in this case.  R_W = 0, D_A = 1
	goto	I2CErr		; and BF = 0
	goto	end_ISR		; If we aren’t in State5, then something is 
				; wrong.

I2CErr	
	banksel	PORTB		; Something went wrong!  Set LED
	bsf	PORTB,7		; and loop forever.  WDT will reset
	goto	$		; device, if enabled.


end_ISR	
	banksel	FSRsave
	movfw	FSRsave		;
	movwf	FSR		; Restore FSR
	movfw	PCLATHsave	; 
	movwf	PCLATH		; Restore PCLATH
	movfw	STATUSsave	;
	movwf	STATUS		; Restore STATUS
	swapf	WREGsave,F	;
	swapf	WREGsave,W	; Restore WREG
	
	retfie			; Return from interrupt.

;---------------------------------------------------------------------
WriteI2C
;---------------------------------------------------------------------


	banksel	SSPSTAT
	btfsc	SSPSTAT,BF	; Is the buffer full?
	goto	WriteI2C	; Yes, keep waiting.
	banksel	SSPCON		; No, continue.
DoI2CWrite
	bcf	SSPCON,WCOL	; Clear the WCOL flag.
	movwf	SSPBUF		; Write the byte in WREG
	btfsc	SSPCON,WCOL	; Was there a write collision?
	goto	DoI2CWrite
	bsf	SSPCON,CKP	; Release the clock.
	return

;---------------------------------------------------------------------
Setup
;
; Initializes program variables and peripheral registers.
;---------------------------------------------------------------------

	banksel	PCON
	bsf	PCON,NOT_POR
	bsf	PCON,NOT_BOR

	clrf	PORTB	; Clear various program variables
	clrf	PORTA
	clrf	PIR1
	banksel	TRISB
	clrf	TRISB
	clrf	TRISA
	movlw	0xFF
	movwf	TRISD
	movlw	0x36		; Setup SSP module for 7-bit 
	banksel	SSPCON
	movwf	SSPCON		; address, slave mode
	rlf	PORTD,w
	andlw	b'00001110'	; mask off all but bottom 3 bits of PORTD	
	banksel	SSPADD
	movwf	SSPADD
	clrf	SSPSTAT
	clrf	RX_buffer
	clrf	comm_status	
	banksel	PIE1		; Enable interrupts
	bsf	PIE1,SSPIE
	bsf	INTCON,PEIE	; Enable all peripheral interrupts
	bsf	INTCON,GIE	; Enable global interrupts
	return

;---------------------------------------------------------------------
; Main Code
;---------------------------------------------------------------------
	org	0x100
Startup
	call	Setup

	banksel	PORTA
Main	clrwdt			; Clear the WDT	
	btfss	comm_status,RX_buffer_full ; have we got data in the buffer?
	goto	Main		; nope
new_data
	banksel	PORTA
	movfw	RX_buffer
	bcf	comm_status,RX_buffer_full
	xorwf	PORTD,w
	andlw	0xF0
	skpz
	goto	not_the_same
the_same
	bcf	PORTA,0x04
	goto	end_comparison
not_the_same
	bsf	PORTA,0x04
end_comparison	
	movfw	PORTD
	andlw	0xF0
	movwf	TX_buffer
	bsf	comm_status,TX_buffer_full
	goto	Main	; Loop forever.		

	


	end			; End of file
