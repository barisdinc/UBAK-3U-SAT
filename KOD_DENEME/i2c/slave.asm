;i2c asm source kodudur
        
        

slave: 

;---------------------------------------------------------;

   constant SCL = 0             ; RA0 pini SCL secildi
   constant SDA = 1             ; RA1 pini SDA secildi

   constant SCL_ANSEL = SCL	; RA0/AN0 disable edilecek
   constant SDA_ANSEL = SDA	; RA1/AN1 disable edilecek
  
  
 
   constant SLAVE_VAR_BASE = 0x20 ; degiskenlerimiz bank0 daki 							    0x20 adresinden itibaren 							    siralansin
 

;---------------------------------------------------------;
#define S_IDLE          state_idle
#define S_WAIT_ADDR     state_wait_addr
#define S_WAIT_RW       state_wait_rw
#define S_ACK_WAIT      state_ack_wait
#define S_ACK_RUNNING   state_ack_running
#define S_ACK_DONE      state_ack_done
#define S_WAIT_COMMAND  state_wait_command
#define S_WAIT_DATA     state_wait_data

;---------------------------------------------------------;
;Communication sirasinda kullanacagimiz tum 8 bitlik ;degiskenleri 0x21 adresinden itibaren siraliyoruz.

STATE   equ     SLAVE_VAR_BASE ;  State machine deki state 							  degeri 0x20 de tutulacak

; the value (address or data) we are acculumating off the wire
ACCUM   equ     SLAVE_VAR_BASE + 0x01

; what address should this node use?
; ### should we also have a compile-time constant?
ADDRESS equ     SLAVE_VAR_BASE + 0x02

; Reading, or writing?
RW_MODE equ     SLAVE_VAR_BASE + 0x03

; We need to save the (potential) DATA<7> value.
DATA7   equ     SLAVE_VAR_BASE + 0x04

; How many bits are left to acquire from the bus?
BCOUNT  equ     SLAVE_VAR_BASE + 0x05

;---------------------------------------------------------;
;Communication sirasinda kullanilacak makrolari burada ;tanimliyoruz

; read the SDA port, placing 0 or 1 into W.
read_SDA: macro
        bank0
        movlw   1
        btfss   PORTA, SDA
        clrw
        endm

; copy the SDA value to a register. REG is {0,1}
; ### we'll likely move to bit storage soon
mov_SDA: macro REG
        bank0
        clrf    REG
        btfsc   PORTA, SDA
        bsf     REG, 0
        endm


return_if_LOW: macro WHICH
        bank0
        btfss   PORTA, WHICH
        return
        endm

return_if_HIGH: macro WHICH
        bank0
        btfsc   PORTA, WHICH
        return
        endm

; Rotate the SDA value into ACCUM's LSB via the Carry bit.
accum_SDA: macro
        bank0
        clrc
        btfsc   PORTA, SDA
        setc
        rlf     ACCUM, F
        endm

; Move to a new state, defined by magical PC offsets.
set_state: macro WHICH
        bank0
        movlw   WHICH - STATE_BASE
        movwf   STATE
        endm

; Jump to WHERE if REG1 == REG2.NOT =jumpeq makrosu cagirilmadan ;reg1 ve reg2 nin bulundugu bank a gecilmeli

jumpeq: macro REG1, REG2, WHERE
        movfw   REG1
        xorwf   REG2, W         ; could use SUBWF
        btfsc   STATUS, Z
        goto    WHERE
        endm
;---------------------------------------------------------;
;esas program burada basliyor, once disable comparator kismini
;da cagiralim cunku A0 ve A1 pinlerini kullaniyoruz


listen:

        bank0
        movfw   CMCON0
        andlw   0x07            ; mask away the un-interesting 
        bz      set111          ; it was 000. transition to 111.
        xorlw   0x07
        bz      done            ; it was 111. leave alone.
        movfw   CMCON0
        iorlw   0x05            ; enable bits 0,2
        andlw   0xFD            ; disable bit 1
        movwf   CMCON0          ; atomic change of config
        goto    done

set111:
        movlw   0x07
        iorwf   CMCON0, F       ; 000 -> 111
        ; FALLTHRU

done:
        ; FALLTHRU
    
  
;---------------------------------------------------------;
       
        bank0

        
        movlw   h'06'			;0x06 i2c adresimiz olsun
        movwf   ADDRESS


	   bank1

        bsf     TRISA, SCL		;RA0 ve RA1 pinleri input oldu
        bsf     TRISA, SDA
  
        bcf     ANSEL, SCL_ANSEL  ;RA0 ve RA1 analog select off
        bcf     ANSEL, SDA_ANSEL


move_to_idle:
        clrf    IOCA			;tum IOCA iptal
	   bsf     IOCA, SDA		;RA1/SDA interrupt enable

move_to_idle2:
        bcf     IOCA, SCL		;RA0/SCL iptalden emin olalim

        bank0				;TODO kaldirilabilr
        set_state S_IDLE

        ; bank0 da ciktik
        return

;Burada baslatma rutini(slave) bitti. Bank0 da kaldik. Sda inter
;rupt enable Scl interrupt disable.
;---------------------------------------------------------;

;bu noktadan itibaren herhangi bir return isr den cikip sonsuz 
;main dongusune gider.

interrupt_dispatch:
        bank0
 

        ; NOTE: we assume this will not cross bank boundaries.
        movfw   STATE
        addwf   PCL, F          ; yay! variant GOTO!

STATE_BASE:

state_idle:
    
     ;SCL nin yukselen kenarlarinda ornekleme yapacagiz
return_if_LOW   SCL  
    
       
       ; SCL yukaridayken SDA duserse bu start conditiondir.
        set_state S_WAIT_ADDR

        ;ACCUM degiskenini sifirlar ve BCOUNT degiskenini 7 yap
        clrf    ACCUM
        movlw   0x07
        movwf   BCOUNT

        ;SDA interrupt ini birakiyoruz SCL ile senkron olacagiz
        bank1
        bsf     IOCA, SCL
        bcf     IOCA, SDA


        return	;ornegin bu return bir sonraki SCL interrupt ini
			; beklemek icin sonsuz main rutine geri doner.



state_wait_addr:


		;SCL nin yukselen kenarlarinda ornekleme yapacagiz
        return_if_LOW   SCL

        accum_SDA	;bank0 a gecip SDA dan bir bit okuyup 					;ACCUM degiskenine yaziyor ve bir sola 					;kaydiriyoruz
       
        decfsz  BCOUNT, F
        goto    got_address ;7biti de aldiysak got_address e git

        return

got_address:
		;alinan adres dogruya rw bekle, degilse idle a don
        jumpeq  ADDRESS, ACCUM, move_to_wait_rw
	goto move_to_wait_rw
       
		;adres bizim degil, idle a gec SDA interrupt 			      ;enable,SCL disable
	   bank1
        goto    move_to_idle

move_to_wait_rw:
        set_state S_WAIT_RW
        return


state_wait_rw:
        

        ;SCL nin yukselen kenarlarinda ornekleme yapacagiz.
        return_if_LOW   SCL

        ; RW_MODE un ilk bitine SDA degerini yaziyoruz.Aslinda 		   ;burada I2c read mi yoksa write mi olacak ayirt edip 		   ;branch etmeliyiz ama henuz transmit kismi implement 		   ;edilmedignden herhangi bir check yapilmamis.
        mov_SDA RW_MODE

        return

move_to_ack_wait:

        set_state S_ACK_WAIT

        ; SDA loe yapip dijital out set ettik
        bcf     PORTA, SDA
        bank1
        bcf     TRISA, SDA

        ;bank 1 de geri donuyoruz dikkat!
	   return


state_ack_wait:
        ;ACK master tarafindan alinsin diye SDA yi lowa cektik 
	   ; bekliyoruz
        set_state S_ACK_RUNNING

        return


state_ack_running:

        ;SCL dusukken ACK orneklenecek beklemeye devam
        return_if_HIGH  SCL

        ; siradakli yukselen SCL interrupti ile ACK done dir
        set_state S_ACK_DONE

        ; SDA yi tekrar input moduna getirelim
        bank1
        bsf     TRISA, SDA

        return ; bank 1 de geri donuyoruz dikkat!


state_ack_done:
	;ilk yukselen SCL kenarunda DATA7 bitini al
        mov_SDA DATA7

        set_state S_WAIT_COMMAND

        ; SDA interruptini da enable edip restart/stop biti 		   ;gelecek mi diye bakalim
        bank1
        bsf     IOCA, SDA

        return ; bank 1 de donuyoruz dikkat


state_wait_command:

	;SCL en son yukselen kenardaydi. Burda degerine bakip SDA 	;mi SCL interrupt mi oldugunu kestirebiliriz. SCL low sa 	;data devam ediyordur. Hala yuksekse SDA interrupt 	;gelmistir

        btfss   PORTA, SCL
        goto    data_command

        ;SDA interrupt sa start stop conditiona bakalim
        btfss   PORTA, SDA
        goto    stop_condition

        set_state S_WAIT_ADDR

        return

stop_condition:
        bank1
        goto    move_to_idle2

data_command:

        movfw   DATA7			;DATA7 de ilk bitimiz vardi
        movwf   ACCUM			;ilk biti ACCUM a aldik
        movlw   0x07            ;BCOUNT a 7 yazalim loop icin
        movwf   BCOUNT

        set_state S_WAIT_DATA

        
        bank1
        bcf     IOCA, SDA

        return		;bank1 de cikiyoruz dikkat!


state_wait_data:
       ;SCL nin dusen kenarlarinda ornekleme yapmayalim
        return_if_LOW   SCL

        ; SDA dan bir bit al ve bir sonraki interrup ti bekle
        accum_SDA

        ;BCOUNT degeri 7 den 0 a dusene kadar SCL nin yukselen 
	   ;kenarlarinda SDA dan data alaim bitince ->got_data
	   decfsz  BCOUNT, F
        goto    got_data

        ; We don't have all the bits, so wait for more...
        return

got_data:
		;artik datamiz ACCUM un icinde
	   movf    ACCUM,0 ;ACCUM registerinin icerigi W ya yaz
	   movwf   PORTC   ;Working register C portuna yaz
        
	
	goto    move_to_ack_wait


; ### need routines to write data back to the master. obviously, this
; ### will be based on how we handle the incoming data processing.


