Device = 16F877
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, BOREN_ON, LVP_OFF, CPD_OFF, WRT_OFF, DEBUG_OFF, CP_OFF

Xtal=20 'dikkat gercek ortamda 20 yap
All_Digital = True

Declare LCD_Interface = 4
Declare LCD_DTPin = PORTD.4
Declare LCD_RSPin = PORTD.2 'RS pin del LCD
Declare LCD_ENPin = PORTD.3 'EN pin del LCD
Declare LCD_Lines = 2 '2 lines LCD
Declare BUS_SCL On 

Declare SDA_Pin PORTC.4
Declare SCL_Pin PORTC.3

'Declare Hbus_Bitrate  100
ADCON0 = 0

Main:
        Print At 1,1, "I2C DEBUG MASTER"
        Print At 2,1, "....ACILIYOR...."
        DelayMS 500
        Print At 2,1, ".....ACILDI....."
        DelayMS 500
        Cls

        Dim hata_durum  As Byte    
        Dim KOMUT[7]    As Byte
        Dim BATARYA[2]  As Byte
        Dim sayac       As Byte
        Dim BATvolt     As Float

        
        
Dongu:
    
'    I2COut PORTC.4, PORTC.3, $64, [4]       
'    DelayMS 100
'    I2CIn PORTC.4, PORTC.3, $64, [batarya[0],BATARYA[1],BATARYA[1],BATARYA[1],BATARYA[1],BATARYA[1],BATARYA[1],BATARYA[1],BATARYA[1]] 
'    DelayMS 10

'    I2COut PORTC.4, PORTC.3, $64, [0]       
'    DelayMS 100
'    I2CIn PORTC.4, PORTC.3, $64, [hata_durum,BATARYA[0]] 
    I2CIn PORTC.4, PORTC.3, $64, [hata_durum] 
    DelayMS 10
    

'    I2COut PORTC.4, PORTC.3, $64, [4]       
'    DelayMS 10
'    I2CIn PORTC.4, PORTC.3, $64, 4, [BATARYA[0],BATARYA[1]] 
    DelayMS 20



    BATvolt = (BATARYA[0] * 256 + BATARYA[1]) 
    BATvolt = BATvolt / 102
    
    Toggle PORTB.1
    Print At 1,1, "D:",Hex hata_durum, " Bat:", Hex BATARYA[0]," ", Hex BATARYA[1]
    Print At 2,1, "Kmt:", Dec BATvolt 'Hex KOMUT[0], Hex KOMUT[1],Hex KOMUT[2], Hex KOMUT[3],Hex KOMUT[4], Hex KOMUT[5],Hex KOMUT[6]

    DelayMS 1000

    GoTo Dongu        

DATAGONDER:
    HBStart
    HBusOut $64,[1,2,3,4,5]
    HBStop
    Return



End
