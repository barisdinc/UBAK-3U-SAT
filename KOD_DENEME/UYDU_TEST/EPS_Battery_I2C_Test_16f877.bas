'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2013 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 12/9/2013                                         *
'*  Version : 1.0                                               *
'*  Notes   : ClydeSpace EPS ve batarya ile I2C haberlesme      *
'*          : testleri icin yazilmis kodlardir                  *
'****************************************************************



Device 16F877
Xtal=20
All_Digital = True
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, BOREN_ON, LVP_OFF, CPD_OFF, WRT_OFF, DEBUG_OFF, CP_OFF

Declare LCD_Interface = 4
Declare LCD_DTPin = PORTD.4
Declare LCD_RSPin = PORTD.2 'RS pin del LCD
Declare LCD_ENPin = PORTD.3 'EN pin del LCD
Declare LCD_Lines = 2 '2 lines LCD

Declare Hbus_Bitrate  100

TRISB = %11111111

Dim Address As Word   ' 16-bit address required

Symbol SDA = PORTC.3  ' Alias the SDA (Data) line
Symbol SCL = PORTC.4  ' Alias the SSL (Clock) line
Symbol Control = %10100000

Output PORTD


Dim DURUM As Byte

Address = $14          ' Write to address 20

Dim sayac As Word
Cls
DelayMS 50

Symbol TR_AC    = PORTB.1
Symbol TR_KAPAT = PORTB.2
Symbol DURUMSOR = PORTB.3
Symbol TPSAKIM  = PORTB.4
Symbol CIKISGUC = PORTB.5






For sayac = 1 To 1000


If TR_AC    = 1 Then Print At 1,1, "TR AC     ", Dec sayac
If TR_KAPAT = 1 Then Print At 1,1, "TR KAPAT  ", Dec sayac
If DURUMSOR = 1 Then Print At 1,1, "DURUMSOR  ", Dec sayac
If TPSAKIM  = 1 Then Print At 1,1, "TPSAKIM   ", Dec sayac
If CIKISGUC = 1 Then Print At 1,1, "CIKISGUC  ", Dec sayac
    
    
    
Print At 2,1, " = ", Dec DURUM,"-"
    

HBStart   
     HBusOut $14

    If TR_AC    = 1 Then HBusOut $15
    If TR_KAPAT = 1 Then HBusOut $16
    If DURUMSOR = 1 Then HBusOut $17
    If TPSAKIM  = 1 Then HBusOut $18
    If CIKISGUC = 1 Then HBusOut $20

HBStop


DelayMS 100

'    HBStart   
'     HBusOut $14
'     HBusOut $17
'    HBStop


    DelayMS 1000


    HBStart   
     HBusOut $15
     DURUM =  HBusIn   
    HBStop

    DelayMS 1000

Next sayac

Stop


