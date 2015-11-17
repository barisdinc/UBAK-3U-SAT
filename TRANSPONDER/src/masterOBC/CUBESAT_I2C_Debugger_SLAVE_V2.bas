'CUBESAT icin LCD ekrana Debug yazma cihazi

Device = 16F877
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, BOREN_ON, LVP_OFF, CPD_OFF, WRT_OFF, DEBUG_OFF, CP_OFF

Xtal=4
All_Digital = True

SCL_Pin = PORTC.3 
SDA_Pin = PORTC.4

Declare LCD_Interface = 4
Declare LCD_DTPin = PORTD.4
Declare LCD_RSPin = PORTD.2 'RS pin del LCD
Declare LCD_ENPin = PORTD.3 'EN pin del LCD
Declare LCD_Lines = 2 '2 lines LCD

Declare Hbus_Bitrate  100

Symbol BF		SSPSTAT.0       	' SSP (I2C) Buffer Full
Symbol R_W		SSPSTAT.2       	' SSP (I2C) Read/Write
Symbol D_A		SSPSTAT.5       	' SSP (I2C) Data/Address
Symbol CKP		SSPCON.4        	' SSP (I2C) SCK Release Control
Symbol SSPEN	SSPCON.5        	' SSP (I2C) Enable
Symbol WCOL		SSPCON.7        	' SSP (I2C) Write Collision Detect


Symbol PSA      = OPTION_REG.3 ' Prescaler Assignment
Symbol INTEDG   = OPTION_REG.6 ' Interrupt Edge Select
Symbol NOT_RBPU = OPTION_REG.7 ' PORTB Pull-up Enable

'NOT_RBPU = 0
INTEDG = 0
PSA = 0 'timer0

Symbol RBIF     = INTCON.0  ' RB Port Interrupt Flag
Symbol INT0IF   = INTCON.1  ' RB0 External Interrupt Flag
Symbol TMR0IF   = INTCON.2  ' TMR0 Overflow Interrupt Flag
Symbol RBIE     = INTCON.3  ' RB Port Change Interrupt Enable
Symbol INT0IE   = INTCON.4  ' RB0 External Interrupt Enable
Symbol TMR0IE   = INTCON.5  ' TMR0 Overflow Interrupt Enable
Symbol PEIE     = INTCON.6  ' Peripheral Interrupt Enable
Symbol GIE      = INTCON.7  ' Global Interrupt Enable
INTCON = %11000000  'PIE ve GIE acik

Symbol TMR1IE   = PIE1.0 ' TMR1 Overflow Interrupt Enable
Symbol TMR2IE   = PIE1.1 ' TMR2 to PR2 Match Interrupt Enable
Symbol CCP1IE   = PIE1.2 ' CCP1 Interrupt Enable
Symbol SSPIE    = PIE1.3 ' Synchronous Serial Port Interrupt Enable
Symbol TXIE     = PIE1.4 ' USART Transmit Interrupt Enable
Symbol RCIE     = PIE1.5 ' USART Receive Interrupt Enable
Symbol ADIE     = PIE1.6 ' A/D Converter Interrupt Enable
PIE1 = %0001000 'sadece SSPIE

Symbol TMR1IF   = PIR1.0 ' TMR1 Overflow Interrupt Flag
Symbol TMR2IF   = PIR1.1 ' TMR2 to PR2 Match Interrupt Flag
Symbol CCP1IF   = PIR1.2 ' CCP1 Interrupt Flag
Symbol SSPIF    = PIR1.3 ' Synchronous Serial Port (SSP) Interrupt Flag
Symbol TXIF     = PIR1.4 ' USART Transmit Interrupt Flag
Symbol RCIF     = PIR1.5 ' USART Receive Interrupt Flag
Symbol ADIF     = PIR1.6 ' A/D Converter Interrupt Flag
PIR1 = 0 'flagleri sifirla

Symbol ADON     = ADCON0.0 ' A/D ON bit
Symbol NOT_DONE = ADCON0.2 ' A/D Conversion Status flag
Symbol GO_DONE  = ADCON0.2 ' A/D Conversion Enable
Symbol CHS0     = ADCON0.3 ' Analog Channel Select bits
Symbol CHS1     = ADCON0.4 ' Analog Channel Select bits
Symbol CHS2     = ADCON0.5 ' Analog Channel Select bits
Symbol ADCS0    = ADCON0.6 ' A/D Conversion Clock Select bits
Symbol ADCS1    = ADCON0.7 ' A/D Conversion Clock Select bits
'ADCON0 = %11000001 'GO_DONE i set ederek conversion yaptiracagim
ADCON0 = %11000000
ADCON1 = %10000010 '
ADIF = 0 
ADIE = 0 
PEIE = 1 'Peripheral interrupt (yukarida acmistik ama olsun)
GIE  = 1 'global kesmeleri aktif et


Giris:	
        ADCON1 = 7              			' All PORTA, PORTE pins to digital     
        SSPADD = $38              			' Initialise I2C slave mode
        SSPCON2 = 0             			' General call address disabled
        SSPCON = $36            		    ' Set to I2C slave with 7-bit address        
        '00110110
        Print At 1,1, ".....SLAVE....."
        Print At 2,1, "....ACILIYOR...."
        DelayMS 1000
        Print At 2,1, ".....ACILDI....."
        DelayMS 1000
        Cls

Dim     datain    As Byte
Dim     dataout   As Byte
Dim     DataCount As Byte
Dim     LCDgunle  As Bit
LCDgunle = 0

Dim     CEVAP[12] As Byte   'I2C ye verilecek cevap
Dim     CEVAPlen  As Byte   'I2C cevabinin uzunlugu
Dim     CEVAPpos  As Byte   'CEVAP icindeki pozisyonumuz (kacinci byte i gonderiyoruz)


On_Interrupt GoTo myinterrupt
GoTo Basla
myinterrupt:
    Context Save
    GIE = 0
    If SSPIF  = 1 Then GoSub i2cslave   ' I2C interrupt
    GIE = 1
    Context Restore

i2cslave: 
    SSPIF = 0                           ' interrupt flag ini temizle
    SSPCON.6 = 0                        ' collision ve hatalari da temizle
    WCOL = 0
    If R_W = 1 Then i2crd               ' gelen datayi oku
    If BF = 0 Then Return               ' buffer bosaldi, geri don
    If D_A = 1 Then i2cwr               ' Data geldi (adres degil)
    If D_A = 0 Then DataCount = 0
    If SSPBUF != 2 Then Return          
    Return

i2cwr:    
    datain = SSPBUF                 ' I2C write data to bus
    CEVAP[DataCount] = datain
    DataCount = DataCount + 1
    If DataCount = 2 Then LCDgunle = 1
    Return


i2crd:  
    SSPBUF = CEVAP[CEVAPpos]
    If CEVAPpos < CEVAPlen Then CEVAPpos = CEVAPpos + 1  'cevap uzunluguna kadar ilerle.. hala bilgi istiyorsa son datayi yolla
    CKP = 1                             ' Release SCL line
    Return



Basla:    
    'sonsuz dongu
    If LCDgunle = 1 Then
        Print At 1,1,Hex CEVAP[0],".",Hex CEVAP[1],".",Hex CEVAP[2],".",Hex CEVAP[3],".",Hex CEVAP[4],".",Hex CEVAP[5]," "
        Print At 2,1,Hex CEVAP[6],".",Hex CEVAP[7],".",Hex CEVAP[8],".",Hex CEVAP[9],".",Hex CEVAP[10],".",Hex CEVAP[11]," "
        LCDgunle = 0
    EndIf
    
    GoTo Basla
              



End


