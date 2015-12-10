;port B	display	keyboard
; PB0 ----   RS232 TX		
; PB1 ---- 		
; PB2 ---- 		
; PB3 ---- 	D0	
; PB4 ---- 	D1	
; PB5 ---- 	D2	
; PB6 ---- 	D3
; PB7 ----  	DAT

;porta
;PA0		analog batt. voltaj giriþi VCC/2 olarak
;PA1	
;PA2		alýcý telsizi besleme devresi aktif "H"
;PA3		
;PA4		8870 OE aktif "H"

;  DTMF									MESAJ ascii
;*1210B#	:TRANS KAPAT			:   	@1210B#
;*12115#	:TRANS AC LOW PWR	:	@12115#
;*12126#	:TRANS AC MID PWR	:	@12126#
;*12137#	:TRANS AC HIG PWR	:	@12137#
;*12148#	:SURE SET 1			:	@12148#
;*12159#	:SURE SET 2			:	@12159#
;*12160#	:SURESIZ SET			;	@12160#
;*1217*#	:BEACON KAPAT		:	@1217*#
;*1218##	:BEACON AC			:	@1218##



  LIST      p=16F88              	; list directive to define processor
    #INCLUDE <P16F88.INC>          	; processor specific variable definitions
;------------------------------------------------------------------------------ 

    __CONFIG    _CONFIG1, _CP_OFF & _DEBUG_OFF & _WRT_PROTECT_OFF & _CPD_OFF & _LVP_OFF & _BODEN_ON & _MCLR_ON & _PWRTE_ON & _WDT_OFF & _XT_OSC
   __CONFIG    _CONFIG2, _IESO_OFF & _FCMEN_OFF


 #DEFINE	LCD_DATA	 	PORTB		; data çýkýþlarý 0123 den olacak andlw 0x0f
#DEFINE  	RS 				PORTB,4 	; RS line of LCD	
#DEFINE  	E  				PORTB,5    	;  E line of LCD

     ERRORLEVEL -224        ;  supress annoying message from tris
     ERRORLEVEL -302        ;  supress message from page change
;
 cblock 0x20
CVD00,CVD01,CVD02,CVD03,CVD04,CVD05
ADHIGH, ADLOW,temp,del,tempV,tempT,battVolt
count,delay           
d1,veri,sayac
komut
var1,var2,var3,var4,varCS,tim1,tim2,okunan,d2,f1,f2,flop
  endc
;

  org 0
	goto init
;---------------------------------------
init
 	BANKSEL PORTA 				; select bank of PORTA
		CLRF PORTA 				; Initialize PORTA by
	BANKSEL ANSEL 				; Select Bank of ANSEL
		MOVLW 	B'0000001' 		; Configure all pins
		MOVWF 	ANSEL 			; as digital inputs A0 analog
		MOVLW 	B'10000000'	; rigth justified
		MOVWF  	ADCON1
	BANKSEL ADCON0
		MOVLW	b'01000101'		; CH:0
		MOVWF	ADCON0
	BANKSEL CMCON	 
		movlw 	B'00000111'			;COMPARATÖR MODUNU KAPATMAK iÇiN
		movwf 	CMCON
	BANKSEL	TRISA 
      		movlw 	B'00000001'        ;  
        	movwf 	TRISA
       	movlw	b'11111110'	; 
        	movwf 	TRISB
    BANKSEL OPTION_REG
        movlw 	B'00000111'        ; pull-ups ENABLE,prescaler assigned to TMR0   ()10100110
        movwf 	OPTION_REG         ; prescaler set to 1:128 , rolls over each second
  bcf STATUS,RP0
  bcf STATUS,RP1	
;-----------------------------------
		bsf PORTB,0	;
		bcf PORTA,2	; alýcý off
		bsf PORTA,3	; ptt off / 573 OE off
		bcf PORTA,4	; 8870 OE off
		bcf PORTA,1	; led off
	goto start    
;----------------------------------
start
	call okuV
	call CVDEC
  	call  alicivoltaji		; voltaj uygun ise alýcý açýldý
	bsf PORTA,4	; 8870 OE on
 		call Kychk
		movlw 0x0B	; DTMF "*"
        	subwf okunan,W
		btfss STATUS,Z
	goto start
 		call Kychk
		movf okunan,W
		movwf var1

		call Kychk
		movf okunan,W
		movwf var2

		call Kychk
		movf okunan,W
		movwf var3

		call Kychk
		movf okunan,W
		movwf var4

		call Kychk
		movf okunan,W
		movwf varCS

		call Kychk
		movlw 0x0C	; DTMF "#"
        	subwf okunan,W
		btfss STATUS,Z
	goto start
		movf var1,W
		movwf temp	;temp=var1
		movf var2,W
		addwf temp
		movf var3,W
		addwf temp
		movf var4,W
		addwf temp		; temp=var1+var2+var3+var4
		movf temp,W
		andlw 0x0f
		movwf temp		; 0x0/XXXX
;---------
	movf temp,W
		subwf varCS,W
		btfss STATUS,Z
	goto start
data_dogru
	bcf PORTA,4			; 8870 OE off
	call bportu_giris		; sadece RS232 için B0 çýkýþ
 	call bekle
;
	movlw "@"
		call senddata
;

		movf var1,W
		addlw 0x30
		call senddata
;
		movf var2,W
		addlw 0x30
		call senddata
;
		movf var3,W
		addlw 0x30
		call senddata
;
		movlw 0x0a
		subwf var4,W
		btfsc STATUS,Z
		clrf var4
		movf var4,W
		addlw 0x30
		call senddata
;

		movlw 0x0a		;dtmf 0
		subwf varCS,W
		btfsc STATUS,Z
   goto cev0
		movlw 0x0b	;dtmf *
		subwf varCS,W
		btfsc STATUS,Z
   goto cevstar
		movlw 0x0c		;dtmf #
		subwf varCS,W
		btfsc STATUS,Z		
 goto cev#
		movlw 0x0e		;dtmf B
		subwf varCS,W
		btfsc STATUS,Z
   goto cevB		
		movf varCS,W
		addlw 0x30
gerigel		call senddata
	movlw h'0A'
		call senddata
;	call bekle
	movlw h'0D'
		call senddata
	call bekle
goto start
;-------------
cev0
		movlw "0"
	goto gerigel
cevstar
		movlw "*"
	goto gerigel
cev#
		movlw "#"
	goto gerigel
cevB
		movlw "B"
	goto gerigel










;----------------------------------------
bportu_giris
		bsf STATUS,RP0
           	movlw	b'11111110'	;  B0 output rs232 TX için
        	movwf 	TRISB
		bcf STATUS,RP0
 return
;--------------------------------------
okuV
	MOVLW B'01000001' ;  ; ch 0       
	MOVWF ADCON0
;****************** Required Aquisition Delay *********************************
	MOVLW 0x10
	MOVWF del
LOOP2
	NOP
	NOP 
	DECFSZ del,1
	GOTO LOOP2
;******************* Start Conversion ******************************************
	bsf ADCON0,2
;*******************Poll to see when done *****************************************
LOOP12
		NOP
		BTFSC ADCON0, 2 ; polling
		GOTO LOOP12
		CLRW
		MOVLW B'11111111'
		ANDWF ADRESH,0	 		; copy results of ADRESH to W
		movwf ADHIGH
		bsf STATUS,RP0	;bank1
		CLRW
		MOVLW B'11111111'
		ANDWF ADRESL,0	 	
	bcf STATUS,RP0	;bank0
		movwf ADLOW
 return
;------------------------------
CVDEC			;  ref=10V, 10 bit A 2  DEC
	CLRF	CVD00
	CLRF	CVD01
	CLRF	CVD02
	CLRF	CVD03
	CLRF	CVD04
	CLRF	CVD05
CVDEC00
	BTFSS	ADHIGH,01
	GOTO	CVDEC01
	MOVLW	D'05'
	ADDWF	CVD02,F
CVDEC01
	BTFSS	ADHIGH,00
	GOTO	CVDEC02
	MOVLW	D'02'
	ADDWF	CVD02,F
	MOVLW	D'05'
	ADDWF	CVD03,F
CVDEC02
	BTFSS	ADLOW,07
	GOTO	CVDEC03
	MOVLW	D'01'
	ADDWF	CVD02,F
	MOVLW	D'02'
	ADDWF	CVD03,F
	MOVLW	D'05'
	ADDWF	CVD04,F
CVDEC03
	BTFSS	ADLOW,06
	GOTO	CVDEC04
	MOVLW	D'06'
	ADDWF	CVD03,F
	MOVLW	D'02'
	ADDWF	CVD04,F
	MOVLW	D'05'
	ADDWF	CVD05,F
CVDEC04
	BTFSS	ADLOW,05
	GOTO	CVDEC05
	MOVLW	D'03'
	ADDWF	CVD03,F
	MOVLW	D'01'
	ADDWF	CVD04,F
	MOVLW	D'03'
	ADDWF	CVD05,F
CVDEC05
	BTFSS	ADLOW,04
	GOTO	CVDEC06
	MOVLW	D'01'
	ADDWF	CVD03,F
	MOVLW	D'05'
	ADDWF	CVD04,F
	MOVLW	D'06'
	ADDWF	CVD05,F
CVDEC06
	BTFSS	ADLOW,03
	GOTO	CVDEC07
	MOVLW	D'07'
	ADDWF	CVD04,F
	MOVLW	D'08'
	ADDWF	CVD05,F
CVDEC07
	BTFSS	ADLOW,02
	GOTO	CVDEC08
	MOVLW	D'03'
	ADDWF	CVD04,F
	MOVLW	D'09'
	ADDWF	CVD05,F
CVDEC08
	BTFSS	ADLOW,01
	GOTO	CVDEC09
	MOVLW	D'02'
	ADDWF	CVD04,F
CVDEC09
	BTFSS	ADLOW,00
	GOTO	CVDEC10
	MOVLW	D'01'
	ADDWF	CVD04,F
CVDEC10
	MOVLW	D'10'
	INCF	CVD04,F
	SUBWF	CVD05,F
	BTFSC	STATUS,C
	GOTO	$-3
	DECF	CVD04,F
	ADDWF	CVD05,F
	INCF	CVD03,F
	SUBWF	CVD04,F
	BTFSC	STATUS,C
	GOTO	$-3
	DECF	CVD03,F
	ADDWF	CVD04,F
	INCF	CVD02,F
	SUBWF	CVD03,F
	BTFSC	STATUS,C
	GOTO	$-3
	DECF	CVD02,F
	ADDWF	CVD03,F
	INCF	CVD01,F
	SUBWF	CVD02,F
	BTFSC	STATUS,C
	GOTO	$-3
	DECF	CVD01,F
	ADDWF	CVD02,F
	INCF	CVD00,F
	SUBWF	CVD01,F
	BTFSC	STATUS,C
	GOTO	$-3
	DECF	CVD00,F
	ADDWF	CVD01,F

	MOVLW	D'48'

	ADDWF	CVD00,F
	ADDWF	CVD01,F
	ADDWF	CVD02,F
	ADDWF	CVD03,F
	ADDWF	CVD04,F
	ADDWF	CVD05,F

	RETURN
;-----------------------------------------------------
alicivoltaji
		swapf CVD02,W
		andlw 0xF0
		movwf tempV		; 84210000
    MOVWF battVolt		; batarya voltajýný göndermek için kullanýlacak deðer
		movf CVD03,W
		andlw 0x0f
		addwf tempV		;
;
		movlw 0x72		; batarya 7.2V un üzerinde ise telsizi aç
		subwf tempV,W
		btfss STATUS,C	; F-W=  + ise C=1,   F-W=  - ise C=0
	goto lowbak				;bcf PORTA,7
		bsf PORTA,2		; telsiz açýldý 
;		bsf temp1,0			; temp1 set
	return
;---------
lowbak  
		movlw 0x65			; batarya 6.5 voltun altýnda ise telsizi kapa	
		subwf tempV,W
	     btfsc STATUS,C		; 	 F-W=  + ise C=1,   F-W=  - ise C=0
  return
		bcf PORTA,2		; telsiz kapandý
 return
;--------------------------------------------------------------------------------
senddata	; TX tarafý   8N1.5
		movwf veri
 		bcf STATUS,C
    		bcf 	PORTB,0       ; ?start bit send
   		call bekle
    	movlw 	.8
    	movwf 	sayac
TX_Loop:
   	RRF veri,F
    	btfss STATUS,C
    	bcf 	PORTB,0
    	btfsc STATUS,C
    	bsf 	PORTB,0
    	call bekle
    	decfsz 	sayac,f
    	goto 	TX_Loop
    	bsf 	PORTB,0        ;?stop bit send
    	call bekle
	movlw	0x0e
	movwf	d1
	call Delay_0
  return
;---------------------------------
bekle			;91 cycles
	movlw	0x1b
	movwf	d1
Delay_0
	decfsz	d1, f
	goto	Delay_0
;	goto	$+1;2 cycles
	nop
 return
;----------------------------------------------------------------
Kychk  
		clrf tim1
        	clrf tim2
		BSF PORTA,1
     		btfsc PORTB,7	;dat
        	goto Kychk
	
Kypush 
		BCF PORTA,1
	call timer_05	
        	btfss PORTB,7
        	goto Kypush		;  dtmd datayý burada bekler, timer dolunca voltaj okur iþini yapar
        	call bekle_40ms	; geri buraya gelir.
        	btfss PORTB,7
        	goto Kypush
		movf PORTB,W
		movwf okunan		;dat,d3,d2,d1,d0,x,x,x
	rrf okunan,1
	rrf okunan,1
	rrf okunan,1
	movf okunan,W
	andlw 0x0f
	movwf okunan
		clrf tim1
		clrf tim2

 	return
;----------------------
bekle_40ms
			;35798 cycles
	movlw	0xF7
	movwf	d1
	movlw	0x1C
	movwf	d2
Delay_01
	decfsz	d1, f
	goto	$+2
	decfsz	d2, f
	goto	Delay_01

			;2 cycles
	goto	$+1
 return


timer_05			; süre sonunda starta gider, voltaj okuma vs yapar geri Kychk e gelir
		incf tim1
	 	movlw 0xff
	  	subwf tim1,W 
	    	btfss STATUS,Z	
	return   
	     	incf tim2
	      	movlw 0xff
	      	subwf tim2,W
	      	btfsc STATUS,Z
	      goto start
 return
;----------------------

END


















