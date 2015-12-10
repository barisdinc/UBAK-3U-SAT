;baslangic
 list        p=16F688        ; list directive to define processor

 include    p16f688.inc   
 include    macros.inc

 errorlevel  -302

#define TRIS_PORTA B'001111'
 constant DEFAULT_CONFIG = _FOSC_INTOSCIO & _WDTE_OFF & _PWRTE_ON & _MCLRE_OFF & _CP_OFF & _CPD_OFF & _BOREN_OFF & _IESO_OFF & _FCMEN_OFF

 cblock  0x20
WTemp
StatusTemp
test
 endc
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; Begin Program Memory
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        ORG                0x000                ;RESET 
    
reset:
    
    goto main

        ORG                0x004                ;Interrupt 
	
	movwf		WTemp		;Save W register
	swapf		STATUS, W	;Swap status to be saved into W
	movwf		StatusTemp	;Save STATUS register

interrupt:

 
bank0
movf PORTA,w

bank1
 bcf  INTCON,GIE


  
ifbs INTCON, RAIF
     bcf INTCON, RAIF
	
     call interrupt_dispatch
        
	
	
          
   endif_ 

     
  bank1 
        
 bsf  INTCON,GIE
    
     
	movwf	STATUS		; restore STATUS register
	swapf	WTemp, F
	swapf	WTemp, W		; restore W register          
        
	retfie                    ;return from interrupt

main: 

call slave
   
clrf PORTC

bank1
CLRF ANSEL
CLRF  TRISC

    
	bcf  			INTCON,PEIE
	bcf			INTCON,T0IE
	bcf  			INTCON,INTE

  
 

     bsf             INTCON, RAIE
     bsf             INTCON, GIE


sonsuz:
goto sonsuz

include    slave.asm
 end