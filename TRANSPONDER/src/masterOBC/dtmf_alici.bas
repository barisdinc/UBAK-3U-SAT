'****************************************************************
'*  Name    : dtmf_alici.BAS                                    *
'*  Author  :                                                   *
'*  Notice  : Copyright (c) 2013 TAMSAT                         *
'*          : All Rights Reserved                               *
'*  Date    : 12/29/2013                                        *
'*  Version : 1.0                                               *
'*  Notes   : Cemal Oren (TA2AW) nin yaptigi ve adil kodunu ASM *
'*          : olarak yazdigi kodun cevrimidir.                  *
'****************************************************************

';port B	display	keyboard
'; PB0 ----   RS232 TX		
'; PB1 ---- 		
'; PB2 ---- 		
'; PB3 ---- 	D0	
'; PB4 ---- 	D1	
'; PB5 ---- 	D2	
'; PB6 ---- 	D3
'; PB7 ----  	DAT

';porta
';PA0		analog batt. voltaj giriþi VCC/2 olarak
';PA1	led
';PA2		alýcý telsizi besleme devresi aktif "H"
';PA3		
';PA4		8870 OE aktif "H"


Device = 16F88
Config _CP_OFF , _DEBUG_OFF , _WRT_PROTECT_OFF , _CPD_OFF , _LVP_OFF , _BODEN_ON , _MCLR_ON , _PWRTE_ON , _WDT_OFF , _XT_OSC, _IESO_OFF , _FCMEN_OFF

Xtal 4

Start:

    TRISA.0 = 1 'batarya voltaji olcumu
    TRISA.1 = 0 ' durum LED'i
    TRISA.2 = 0 ' telsiz acip kapama
    TRISA.3 = 0 
    TRISA.4 = 0 ' 8870 Enable

    TRISB = %11111111
'    TRISB.0 = 1 
'    TRISB.1 = 1 'SDA olacak
'    TRISB.2 = 1 
'    TRISB.3 = 1 'data0
'    TRISB.4 = 1 'data1  SCL olacak
'    TRISB.5 = 1 'data2
'    TRISB.6 = 1 'data3
'    TRISB.7 = 1 '8870 StD


    OPTION_REG = %00000000
'    OPTION_REG.7 = 0 'PORTB pullup yok
'    OPTION_REG.6 = 0 'PORTB0 Interrupt falling edge    !!! 8870 StD bacagi inerken inerrupt olacak
'    OPTION_REG.5 = 0 'TMR0 cycle clock a bagli
'    OPTION_REG.4 = 0 'TOSE incremet edge
'    OPTION_REG.3 = 0 'prescaler TMR0 a bagli olacak
'    OPTION_REG.2 = 0 'TMR0 bolme orani 2. bit     000 = 1:2
'    OPTION_REG.1 = 0 'TMR0 bolme orani 1. Bit     111 = 1:256
'    OPTION_REG.0 = 0 'TMR0 bolme orani 0. Bit

    INTCON = %11000000
'    INTCON.7 = 1 'GIE acik
'    INTCON.6 = 1 'PEIE acik (bunu I2C icin kullanacagiz)
'    INTCON.5 = 0 'TMR0IE kapali                           !!! zaman isleri icin bunu acacagim
'    INTCON.4 = 1 'RB0 INT0IE acildi      !!! StD buradan tetikliyor
'    INTCON.3 = 0 'RBIE PortB change interrupt ina ihtiyacimiz yok RB) i kullanacagiz
'    INTCON.2 = 0 'TMR0IF sifirlandi
'    INTCON.1 = 0 'INT0IF sifirlandi
'    INTCON.0 = 0 'RBIF   sifirlandi
            
    PIE1 = %00001000
'    PIE1.7 = 0 ' 
'    PIE1.6 = 1 ' ADIE AnalogDigital cevirici Enable edildi
'    PIE1.5 = 0 ' AUSART kapali
'    PIE1.4 = 0 ' TXIE kapali   
'    PIE1.3 = 1 ' SSPIE I2C interrupt acik    
'    PIE1.2 = 0 ' CCP1IE kapali   
'    PIE1.1 = 0 ' TMR2IE kapali   
'    PIE1.0 = 0 ' TMR1IE kapali   
 
    PIR1 = %00000000   
'    PIR1.7 = 0 
'    PIR1.6 = 0 'ADIF sifirlka
'    PIR1.5 = 0 'RCIF kapali
'    PIR1.4 = 0 'TXIF kapali
'    PIR1.3 = 0 'SSPIF kapali
'    PIR1.2 = 0 'CCP1IF kapali
'    PIR1.1 = 0 'TMR2IF kapali
'    PIR1.0 = 0 'TMR1IF Kapali
    
    'SSPSTAT.5 I2C D/A 1:data 0:Adres
    'SSPSTAT.4 I2C stop  bit detected
    'SSPSTAT.3 I2C start bit detected
    'SSPSTAT.2 I2C R/W 1:read 0:write
    'SSPSTAT.0 buffer full (1:transmit in progress, 0: receive not complete)
 
    SSPCON = $36
'    SSPCON.7 = 0 'no collicion
'    SSPCON.6 = 0 'no overflow
'    SSPCON.5 = 1 'enable Serial SSPEN
'    SSPCON.4 = 1 'enable clock
'    SSPCON.3 = 0 ' 3:0 I2C Slave Mode 7-Bit address
'    SSPCON.2 = 1 '
'    SSPCON.1 = 1 '    
'    SSPCON.0 = 0 '    

    'CMCON = 7  'Disable Comperator
    
    Symbol SSPIF PIR1.3     ;I2C interrupt flag
    Symbol BF SSPSTAT.0     ;I2C Buffer Full
    Symbol R_W SSPSTAT.2    ;I2C Read/Write
    Symbol D_A SSPSTAT.5    ;I2C Data/Address
    Symbol CKP SSPCON.4     ;I2C SCK Release Control
    Symbol SSPEN SSPCON.5   ;I2C Enable
    Symbol SSPOV SSPCON.6   ;I2C Receive Overflow Indicator
    Symbol WCOL SSPCON.7    ;I2C) Write Collision Detect        

    SSPADD =  $36
     
    Dim DTMF As Byte
    Dim CMD  As Byte  'I2Cden gelen Komut
    CMD = 0
    Dim DURUM As Byte 'I2C ye gonderilecek DATA (Durum Bilgisi)
    DURUM = 0
    Dim sayac As Byte
    sayac = 0    
'    SSPOV = 0
'    BF = 0


SCL_Pin = PORTB.4 
SDA_Pin = PORTB.1

Declare Hbus_Bitrate  100

    
  

On_Interrupt GoTo inthandler
GoTo Init



' -----[ Interrupt Handler ]-------------------------------------------------------------
inthandler:
    Context Save
        If INTCON.0 = 1 Then   'portb0 interrupt mi ?
            DTMF = PORTB.3 + (PORTB.2 * 2) + (PORTB.5 * 4 ) + (PORTB.6 * 8)     'PORTB deki DTMF datayi oku
            INTCON.1 = 0 'clear flag
        EndIf
        If SSPIF = 1 Then  
            If R_W = 1 Then
                'buraya tx edilecek byte i yaz
                SSPBUF = DURUM
                CKP = 1 'SCL yi rahat birak
            EndIf
            If D_A = 1 Then
                CMD = SSPBUF            
            EndIf
   
            SSPOV = 0 'clear collision & overflow
            WCOL  = 0
            SSPIF = 0 'clear interrupt flag
        EndIf


    Context Restore





' -----[ Main Code ]---------------------------------------------------------------------
Init:
    DelayMS 100
    
    
Dim l_Counter As Word
     
Main:
    If SSPIF = 1 Then
       Print "deneme"
    EndIf

    'Clrwdt
    
    GoTo Main ' sonsuz dongu





