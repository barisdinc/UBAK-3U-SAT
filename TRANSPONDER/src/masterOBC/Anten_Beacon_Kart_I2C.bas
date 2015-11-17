
Device = 16F88
Xtal 4
All_Digital true

Symbol I2CADDR $34 '(7 bit) PROTEUSdan konusurken 0x68 ile konus

Dim data_count As Byte
data_count = 0
TRISB = $FF
TRISA = %00010000
'TRISA = $00


Declare Hserial_Baud = 2400
Declare Hserial_RCSTA = %10010000
Declare Hserial_TXSTA = %00100100
                                                              
Symbol PEIE     = INTCON.6  ' Peripheral Interrupt Enable
Symbol GIE      = INTCON.7  ' Global Interrupt Enable
Symbol TMR1IF   = PIR1.0 'timer 1 interrupt flag
Symbol SSPIF    = PIR1.3 ' Synchronous Serial Port (SSP) Interrupt Flag


OPTION_REG = %10000000 'PULLUP Lari iptal et...

Symbol BF = SSPSTAT.0        ' Buffer Full Status flag
Symbol R_W = SSPSTAT.2       ' Read/Write bit information (I2C mode only)
Symbol D_A = SSPSTAT.5       ' Data/NOT Address bit (I2C mode only)
Symbol CKE = SSPSTAT.6       ' SPI Clock Edge Select
CKE = 0

Symbol CKP      = SSPCON.4  ' Clock Polarity Select bit
Symbol SSPEN    = SSPCON.5  ' Synchronous Serial Port Enable flag
Symbol SSPOV    = SSPCON.6  ' Receive Overflow Indicator flag
Symbol WCOL     = SSPCON.7  ' Write Collision Detect flag

Symbol RBIF     = INTCON.0

INTCON  = %11000000  'PIE ve GIE acik
PIE1    = %0001001 'sadece SSPIE ve TMR1
PIR1    = 0 'flagleri sifirla
ANSEL   = %00000000 

SSPADD  = I2CADDR    '7-Bit address  b00110110
SSPCON  = $36        'I2C slave mode 

T1CON.4 = 1 '1:8 prescaler
T1CON.5 = 1
T1CON.0 = 1 'enable timer1

PEIE = 1 'peripheram kesmeler aktif
GIE  = 1 'global kesmeleri aktif et

Dim datain      As Byte
Dim dataout     As Byte
Dim dataout2     As Byte
Dim SWIC        As Byte
Dim dummy       As Byte
Dim last_REQ    As Byte
Dim Atesle      As Byte
Atesle = 0
Dim Uyukla      As Byte
Uyukla = 0
Dim zaman As Byte
zaman = 0
Dim zaman2 As Byte
zaman2 = 0

Symbol mA      =     $60
Symbol mB      =     $88 
Symbol mC      =     $a8 
Symbol mD      =     $90 
Symbol mE      =     $40 
Symbol mF      =     $28 
Symbol mG      =     $d0 
Symbol mH      =     $08 
Symbol mI      =     $20 
Symbol mJ      =     $78 
Symbol mK      =     $b0 
Symbol mL      =     $48 
Symbol mM      =     $e0 
Symbol mN      =     $a0 
Symbol mO      =     $f0 
Symbol mP      =     $68 
Symbol mQ      =     $d8 
Symbol mR      =     $50 
Symbol mS      =     $10 
Symbol mT      =     $c0 
Symbol mU      =     $30 
Symbol mV      =     $18 
Symbol mW      =     $70 
Symbol mX      =     $98 
Symbol mY      =     $b8 
Symbol mZ      =     $c8 

Symbol m0 = $fc 
Symbol m1 = $7c 
Symbol m2 = $3c 
Symbol m3 = $1c 
Symbol m4 = $0c 
Symbol m5 = $04 
Symbol m6 = $84 
Symbol m7 = $c4 
Symbol m8 = $e4 
Symbol m9 = $f4 

Dim morse_sayilar[10] As Byte 

morse_sayilar[0] = $fc 
morse_sayilar[1] = $7c 
morse_sayilar[2] = $3c 
morse_sayilar[3] = $1c 
morse_sayilar[4] = $0c 
morse_sayilar[5] = $04 
morse_sayilar[6] = $84 
morse_sayilar[7] = $c4 
morse_sayilar[8] = $e4 
morse_sayilar[9] = $f4 

Dim mcnt As Byte
mcnt = 0

Symbol mPeriod =     $56 
Symbol mComma  =     $ce 
Symbol mQuest  =     $32 
Symbol mequal  =     $8c 
Symbol mColon  =     $e2 
Symbol mSemi   =     $aa 
Symbol mSlash  =     $94 
Symbol mDash   =     $86 

Symbol mSpace  =     $01 
Symbol mEND    =     $00

Dim CW As Byte 'CW OR FM
CW = 0



'mesaj{	$48,$48,$18,$C8,$28,$08,$D8,$58,$58,$58,$58,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
'    			                    $42, 'F2
'    			                    $3F, 'F1
'    			                    $E5, 'F0  435.00Mhz
'    			                    $04, 'POWER OUT
'    			                    $5C, 'BEEP TONE
'    			                    $0A, 'BEEP LENGTH
'    			                    $01, 'BEEP NUMBER
'    			                    $0A, 'TIME BETWEEN BEEPS
'    			                    $00, 'BEEP PITCH High
'    			                    $A7, 'BEEP PITCH
'    			                    $00, 'TIMING LOOP High
'    			                    $65, 'TIMING LOOP
'    			                    $00, 'MORSE Code PITCH High
'    			                    $A7, 'MORSE Code PITCH
'    			                    $64, 'TIMING LOOP
'    			                    $00, 'TIMING BETWEEN BEEPS WHEN Low VOLTAGE
'    			                    $0F, 'V_CUTOFF High
'    			                    $02, 'V_CUTOFF
'    			                    $22  'TIME2
'}


Dim TRDRM As Byte
Dim TRPWR As Byte
Dim BATT  As Byte
Dim PANEL1 As Byte
Dim PANEL2 As Byte
Dim PANEL3 As Byte

TRDRM = mDash
TRPWR = mDash
BATT  = mDash
PANEL1 = mDash
PANEL2 = mDash
PANEL3 = mDash


On_Interrupt GoTo myinterrupt
GoTo Basla
myinterrupt:
    Context Save
    GIE = 0
    If TMR1IF = 1 Then
        zaman = zaman + 1
        Toggle PORTA.1
        If zaman = 40 Then zaman = 0 'dongu 60 saniye
        TMR1L = 0
        TMR1H = 0
        TMR1IF = 0
    EndIf 
    If SSPIF = 1 Then
        SSPIF = 0                
        If R_W = 1 Then 
            CKP = 0
            SSPBUF = dataout
            CKP = 1
            dataout = dataout2
        EndIf
        If BF = 0 Then GoTo Cikis
        If D_A = 1 Then 
            last_REQ = SSPBUF
            If R_W = 0 Then   
'                If last_REQ = 1 Then dataout  = SWIC
'                If last_REQ = 2 Then Atesle = 1
'                If last_REQ = 3 Then Atesle = 0
'                If last_REQ = 4 Then Uyukla = 1
                Select last_REQ
                    Case 1
                        dataout = SWIC
                    Case 2
                        Atesle = 1
                    Case 3
                        Atesle = 0
                    Case 4
                        Uyukla = 1
                    Case 10
                        TRDRM = mO
                    Case 11 
                        TRDRM = mX
                    Case 12
                        TRPWR = mL
                    Case 13
                        TRPWR = mM
                    Case 14
                        TRPWR = mH
                    Case 20 
                        BATT = m0
                    Case 21 
                        BATT = m1
                    Case 22 
                        BATT = m2
                    Case 23 
                        BATT = m3
                    Case 24 
                        BATT = m4
                    Case 25 
                        BATT = m5
                    Case 26 
                        BATT = m6
                    Case 27 
                        BATT = m7
                    Case 28 
                        BATT = m8
                    Case 29 
                        BATT = m9
                    Case 30 
                        PANEL1 = m0
                    Case 31 
                        PANEL1 = m1
                    Case 32 
                        PANEL1 = m2
                    Case 33 
                        PANEL1 = m3
                    Case 34 
                        PANEL1 = m4
                    Case 35 
                        PANEL1 = m5
                    Case 36 
                        PANEL1 = m6
                    Case 37 
                        PANEL1 = m7
                    Case 38 
                        PANEL1 = m8
                    Case 39 
                        PANEL1 = m9
                    Case 40 
                        PANEL2 = m0
                    Case 41 
                        PANEL2 = m1
                    Case 42 
                        PANEL2 = m2
                    Case 43 
                        PANEL2 = m3
                    Case 44 
                        PANEL2 = m4
                    Case 45 
                        PANEL2 = m5
                    Case 46 
                        PANEL2 = m6
                    Case 47 
                        PANEL2 = m7
                    Case 48 
                        PANEL2 = m8
                    Case 49 
                        PANEL3 = m9
                    Case 50 
                        PANEL3 = m0
                    Case 51 
                        PANEL3 = m1
                    Case 52 
                        PANEL3 = m2
                    Case 53 
                        PANEL3 = m3
                    Case 54 
                        PANEL3 = m4
                    Case 55 
                        PANEL3 = m5
                    Case 56 
                        PANEL3 = m6
                    Case 57 
                        PANEL3 = m7
                    Case 58 
                        PANEL3 = m8
                    Case 59 
                        PANEL3 = m9
                        
                        
                EndSelect
                
            EndIf
        EndIf
        dummy = SSPBUF 
Cikis:
    EndIf
    GIE = 1
    Context Restore


Basla:    
    DelayMS 100   

Dongu: 

'    SWIC =  1 + PORTB.7 + 2 * PORTB.6 + 4 * PORTB.5 + 8 * PORTB.3     ' 1+ cunku, eger deger 0 ise SWIC degerini sormadan I2C okumus demektir
    SWIC =  1 + PORTB.7 + 2 * PORTB.6 + 4 * PORTA.4 + 8 * PORTB.3     ' 1+ cunku, eger deger 0 ise SWIC degerini sormadan I2C okumus demektir
    
'    If Atesle = 1 Then
        PORTA.3 = PORTB.7
        PORTA.2 = PORTB.6  
'        PORTA.1 = PORTA.4
'        PORTA.0 = PORTB.3
'    Else
'        Low PORTA.0
'        Low PORTA.1
'        Low PORTA.2
'        Low PORTA.3
'    EndIf
'    gie = 0
'    if zaman2 = 1 then  
        HSerOut["M"]        
        DelayMS 500
        High PORTA.0
        HSerOut["P"]                
        DelayMS 1000
        Low PORTA.0
        If CW = 0 Then                                                                                                       
            HSerOut[PANEL3,mQ,morse_sayilar[mcnt],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,$42,$40,$00,$14,$5C,$0A,$01,$A0,$00,$A7,$00,$65,$00,$A7,$64,$00,$0F,$02,$22]
'            HSerOut[mT,mE,mS,mT,mD,mE,mT,mA,mM,mS,mA,mT,TRDRM,TRPWR,BATT,PANEL1,PANEL2,PANEL3,morse_sayilar[mcnt],mF,0,0,0,0,0,0,0,0,0,0,0,0,$42,$40,$00,$14,$5C,$0A,$01,$A0,$00,$A7,$00,$65,$00,$A7,$64,$00,$0F,$02,$22]
        Else
            HSerOut[PANEL3,mO,morse_sayilar[mcnt],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,$42,$40,$00,$14,$5C,$0A,$01,$A0,$00,$A7,$00,$65,$00,$A7,$64,$00,$1F,$02,$22]
'            HSerOut[mT,mE,mS,mT,mD,mE,mT,mA,mM,mS,mA,mT,TRDRM,TRPWR,BATT,PANEL1,PANEL2,PANEL3,morse_sayilar[mcnt],mc,0,0,0,0,0,0,0,0,0,0,0,0,$42,$40,$00,$14,$5C,$0A,$01,$A0,$00,$A7,$00,$65,$00,$A7,$64,$00,$1F,$02,$22]
        EndIf        
        DelayMS 1000
        High PORTA.0
        HSerOut["G"]
        Low PORTA.0
        CW = CW + 1
        If CW = 2 Then CW = 0
        mcnt = mcnt + 1
        If mcnt = 10 Then mcnt = 0
'    endif
    DelayMS 1000
    DelayMS 1000
    DelayMS 1000
    DelayMS 1000
    DelayMS 1000
    DelayMS 1000
    DelayMS 1000
    DelayMS 1000
    zaman2 = zaman2 + 1
    If zaman2 = 10 Then zaman2 = 0
    GoTo Dongu  
              


End




