'Device 18F24K20
Device 18F24K22
'Device 18F2550
Xtal 4  '20 olacak

Config_Start
FOSC = xt 'HSHP ' Oscillator Selection HS
'OSCS = Off ' Osc. Switch Enable Disabled
PLLCFG = OFF
PRICLKEN = On

FCMEN = Off
IESO = OFF

PWRTEN = On ' Power-up Timer Enabled
'BOR = Off ' Brown-out Reset Disabled
BOREN = SBORDIS
BORV = 190 ' Brown-out Voltage 2.5V
WDTEN = Off ' Watchdog Timer Disabled
WDTPS = 128 ' Watchdog Postscaler 1:128
CCP2MX = PORTC1 ' CCP2 MUX Enable (RC1)
STVREN = OFF ' Stack Overflow Reset Disabled
LVP = Off ' Low Voltage ICSP Disabled
'DEBUG = Off ' Background Debugger Enable Disabled
MCLRE = INTMCLR

CP0 = Off ' Code Protection Block 0 Disabled
CP1 = Off ' Code Protection Block 1 Disabled
CPB = Off ' Boot Block Code Protection Disabled
CPD = Off ' Data EEPROM Code Protection Disabled
WRT0 = Off ' Write Protection Block 0 Disabled
WRT1 = Off ' Write Protection Block 1Disabled
WRTB = Off ' Boot Block Write Protection Disabled
WRTC = Off ' Configuration Register Write Protection Disabled
WRTD = Off ' Data EEPROM Write Protection Disabled
EBTR0 = Off ' Table Read Protection Block 0 Disabled
EBTR1 = Off ' Table Read Protection Block 1 Disabled
EBTRB = Off ' Boot Block Table Read Protection Disabled
Config_End
 



'MCLRE = EXTMCLR


Symbol UZAY = 0
Symbol LAB  = 1
Symbol SA   = 3  'Stand Alone, yani transponder surekli calisiyor
Dim TRANSPONDER_MODE As Byte
TRANSPONDER_MODE = UZAY


Symbol TR_ON  = 1 'transponder on
Symbol TR_OFF = 2 'transponder off
Dim  TR_MD  As Byte
TR_MD = TR_OFF


All_Digital   = true
'portb_pullups = true

Declare CCP1_Pin PORTC.2 'AD8317AGCset pin
Declare CCP2_Pin PORTC.7 'AD8317 final power

'Declare Adin_Res 12
'Declare Adin_Tad frc
'Declare Adin_Stime 50
'ADCON1 = %10000000

TRISA.0 = 1 'ad8317 uzerinden power okuma (final kati)
TRISA.1 = 1 'ad8317 uzerinden power okuma (AGC kati)
TRISA.2 = 1 'ACS714LLCTR'nin 5V cikisi
TRISA.3 = 1 'MB1503 Lock Detect
TRISA.4 = 0 'TPS2421 Enable bacagi
TRISA.5 = 0 'bos.. LED ile test icin OUT yapildi.. !!!INPUT YAPMAYI UNUTMA EN SON!!!

TRISB.0 = 1 'bos
TRISB.1 = 1 'SCL2
TRISB.2 = 1 'SDA2
TRISB.3 = 0 'MB1503 Clock
TRISB.4 = 0 'MB1503 Data
TRISB.5 = 0 'MB1503 LE
TRISB.6 = 0 'MB1503 PSRF  High=normal Low=powersave
TRISB.7 = 0 'MB1503 PSIF  High=normal Low=powersave

TRISC.0 = 0 'LD29300 enable (high=enable)
TRISC.1 = 0 'TPS3823 WDI
TRISC.2 = 0 'AD8317 AGC Vset
TRISC.3 = 1 'SCL1
TRISC.4 = 1 'SDA1
TRISC.5 = 1 'bos
TRISC.6 = 1 'bos
TRISC.7 = 0 'AD8317 Vset Final

Symbol AGC8317in = PORTA.1
Symbol ACS714_5V = PORTA.2
Symbol pllLD     = PORTA.3
Symbol TPS2421en = PORTA.4
Symbol PWRled    = PORTA.5

Symbol mySCL2  = PORTB.1
Symbol mySDA2  = PORTB.2
Symbol pllCLK  = PORTB.3
Symbol pllDATA = PORTB.4
Symbol pllLE   = PORTB.5
Symbol pllPSRF = PORTB.6
Symbol pllPSIF = PORTB.7

Symbol LD29300enable = PORTC.0
Symbol TPS3823WDI    = PORTC.1
Symbol AD8317AGCset  = PORTC.2
Symbol mySCL1        = PORTC.3
Symbol mySDA1        = PORTC.4
Symbol AD8317final   = PORTC.7


Dim FREK1 As Word                            ' VCO Frekansi ( MHz )
Dim FREK2 As Word                            ' VCO Frekansi ( KHz )
Dim STP   As Word                            ' Step Frekansi ( KHz )
Dim REF   As Word                            ' Referanz Frekansi ( KHz )
Dim A     As Word                            ' A degeri
Dim N     As Word                            ' N degeri
Dim R     As Word                            ' R degeri
Dim X     As Word                            '
Dim PRE   As Byte                            '
Dim PRE2  As Byte                            '

Dim DataOut As Dword
Dim sayac   As Byte

Dim SaniyeBekle As Byte
SaniyeBekle = 15

Dim TPS_Akim As Word
Dim Pwm_val As Byte
Pwm_val= 5
Dim Cikis_Gucu As Word

Dim uS As Word
Dim mS As Word
Dim S As Word
Dim mn As Byte
Dim hr As Byte
Dim dy As Byte
Dim DataIn As Byte
Dim LastData As Byte

Symbol GIE = INTCON.7           ' Global Interrupt Enable Bit 
Symbol TMR1_Val = 64536         ' Set the initial value of TMR1 
Symbol TMR1_mS = 1              ' Time period of TMR1 
Symbol Timer1 = TMR1L.Word      ' A special way of addressing both TMR1L and TMR1H with one register
Symbol TMR1_Enable = PIE1.0     ' TMR1 interrupt enable
Symbol TMR1_Overflow = PIR1.0   ' TMR1 overflow flag
Symbol TMR1_On = T1CON.0        ' Enables TMR1 to start incrementing 
        

'Define used register flags
Symbol SSPIF = PIR1.3                   ' SSP (I2C) interrupt flag
Symbol SSPIP = IPR1.3                   ' SSP (I2C) Interrupt Priority bit 1 = High priority
Symbol SSPIE = PIE1.3                   ' SSP (I2C) Interrupt enable
'Symbol BF = SSP1STAT.0                   ' SSP (I2C) Buffer Full
'Symbol R_W = SSP1STAT.2                  ' SSP (I2C) Read/Write
'Symbol D_A = SSP1STAT.5                  ' SSP (I2C) Data/Address
'Symbol CKP = SSP1CON1.4                  ' SSP (I2C) SCK Release Control
'Symbol SSPEN = SSP1CON1.5                ' SSP (I2C) Enable
'Symbol SSPOV = SSP1CON1.6                ' SSP (I2C) Receive Overflow Indicator
'Symbol WCOL = SSP1CON1.7                 ' SSP (I2C) Write Collision Detect
'Symbol SMP = SSP1STAT.7                  ' SSP (I2C) Rate Control

Symbol BF = SSPSTAT.0                   ' SSP (I2C) Buffer Full
Symbol R_W = SSPSTAT.2                  ' SSP (I2C) Read/Write
Symbol D_A = SSPSTAT.5                  ' SSP (I2C) Data/Address
Symbol CKP = SSPCON1.4                  ' SSP (I2C) SCK Release Control
Symbol SSPEN = SSPCON1.5                ' SSP (I2C) Enable
Symbol SSPOV = SSPCON1.6                ' SSP (I2C) Receive Overflow Indicator
Symbol WCOL = SSPCON1.7                 ' SSP (I2C) Write Collision Detect
Symbol SMP = SSPSTAT.7                  ' SSP (I2C) Rate Control

Symbol SEN = SSP1CON2.0 'clock strecthing enabled
Symbol AHEN = SSP1CON3.1 'address hold
SEN = 1



           
'Declare Interrupt Enable bits
Symbol PEIE = INTCON.6                  'Peripheral Interrupt Enable same as GIEL
'Symbol IPEN = RCON.7                    'Interrupt Priority Enable bit

DelayMS 500

TMR1_Enable = 0
 
PEIE = 1 ' Peripheral Interrupts
T1CON.1 = 0 ' 1 = External clock from pin RC0/T1OSO/T1CKI (on the rising edge)  ' 0 = Internal clock (FOSC/4)  'TRISC.0 = 1 ' If External clock, then set clock as an input  'HPWM 1,128,32000 ' Set TMR1's External Source   T1CON.2 = 1 ' 1 = Do not synchronize external clock input  ' 0 = Synchronize external clock input  ' When T1CON.1 = 0;  ' this bit is ignored. Timer1 uses the internal clock when TMR1CS = 0. 
T1CON.4 = 0 ' 11 = 1:8 prescale value  T1CON.5 = 0 ' 10 = 1:4 prescale value  ' 01 = 1:2 prescale value  ' 00 = 1:1 prescale value  Timer1 = TMR1_Val

TMR1_Enable = 1
TMR1_On = 1
 
GIE = 1
 
 
Dim STATE_INFO As Byte
Dim RESPONSE   As Byte
Dim DURUM As Byte                      
DURUM = 0


Dim pllyaz_latch As Bit
pllyaz_latch = 1                  

Dim DutyCycle As Byte
DutyCycle = 0

'test icin AD8317AGCset portuna %5 duty cycle ile 2Khz veriyorum, maximum kazanc
HPWM 1,Pwm_val,2000

GoTo PreMain
On_Interrupt GoTo InterruptSection


InterruptSection:
Context Save

 GIE = 0
 
 If TMR1_Overflow = 1 And TMR1_Enable = 1 Then
     TMR1_Enable = 0
     Timer1 = Timer1 + TMR1_Val
     TMR1_Enable = 1
     TMR1_Overflow = 0
     mS = mS + TMR1_mS
     If mS >= 1000 Then
         'mS = mS - 1000
         mS = 0
         S = S + 1
         If S >= 59 Then
            S = 0
            mn = mn + 1
            If mn >= 59 Then
                mn = 0
                hr = hr + 1
                If hr >= 24 Then
                    hr = 0
                    dy = dy + 1
                EndIf
            EndIf
         EndIf
     EndIf
 EndIf
 
GIE = 1

Context Restore

PreMain:

S = 0
mn = 0
hr   = 0
dy    = 0

'PLL'i LOW-POWER mode'dan cikariyorum   ***TODO low power mode etkinlestirilebilir
Low pllPSRF
Low pllPSIF
DelayMS 10
Low pllLE
High pllPSRF 'low power mode kapali
High pllPSIF 'low power mode kapali



'Labratuvarda calisma modunda isek transpodneri enerjiliyoruz
If TRANSPONDER_MODE = LAB Then
    Low  TPS2421en
    High LD29300enable
    TR_MD = TR_ON
EndIf
 
GoSub Pll_Programla  'ilk degerleri yukle 




Dim Reset_Count As Word

Dim EPS_ADCVal[32] As Word
Dim EPS_ADCValByte[64] As Byte
Dim BAT_ADCVal[16] As Word

Dim dummy As Byte

    Reset_Count = ERead 0         'bu uzaydaki ilk acilisimiz mi ?  TODO uzaya cikista bunun 0 olduguna emin ol.. ya da ANTEN konumlarini mutlaka her seferinde kontrol et
    If Reset_Count = 0 Then GoSub Antenleri_ac
    EWrite 0, [Reset_Count + 1] 

    Dim Versiyon As Byte
    Dim EPSstatus As Byte
    Dim BATVersiyon As Byte
    Dim BATstatus1 As Byte
    Dim BATstatus2 As Byte

    Dim DTMFstat As Byte
    Dim DTMFbatt[2] As Byte
    Dim DTMF[12] As Byte
    Dim DTMFcmd[2] As Byte
    DTMFcmd = 0,0
    
    Dim ANTENLER As Byte

    Dim dongusay As Byte
Main:

    If S = 1 Then GoSub Pll_Programla 'dakiakada bir kez pll i kontrol edip yeniden programla

    dongusay = dongusay + 1  'test icindir
    Dim ADCsay As Byte   

    DelayMS 10
    'EPS degerlerini oku

    'statussor
    I2COut PORTC.4, PORTC.3, $56, [1]       'DIKKAT PDF de bu adres 0x2B (1 bit kaydiriyoruz)
    DelayMS 5
    I2CIn PORTC.4, PORTC.3, $56, [EPSstatus] 
    DelayMS 5


    'EPS'den deger oku
    For ADCsay  = 0 To 31
        I2COut PORTC.4, PORTC.3, $56, 0, [ADCsay]       'DIKKAT PDF de bu adres 0x2B (1 bit kaydiriyoruz)
        DelayMS 10
        I2CIn PORTC.4, PORTC.3, $56, [EPS_ADCVal[ADCsay]] 
        DelayMS 10
    Next ADCsay

     
    'DTMF karti sorgulamalari
    I2COut PORTC.4,PORTC.3, $32, [1]
    DelayMS 100
    I2CIn  PORTC.4,PORTC.3, $33, [DTMFbatt[0],DTMFbatt[1]]
    'DTMFbatt[0] = DTMFbatt[0] & %01111111
    'DTMFbatt[1] = DTMFbatt[1] & %01111111
    
    I2COut PORTC.4,PORTC.3, $32, [2]
    DelayMS 100
    I2CIn  PORTC.4,PORTC.3, $33, [DTMFcmd[0],DTMFcmd[1]]
    'DTMFcmd[0] = DTMFcmd[0] & %01111111
    'DTMFcmd[1] = DTMFcmd[1] & %01111111


    DelayMS 10
    'BEACOn DURUM SORGULA
    I2COut PORTC.4,PORTC.3, $34, [1]
    I2CIn PORTC.4,PORTC.3, $35, [ANTENLER]
    

    'BEACON karti anten actirma komutu
    I2COut PORTC.4,PORTC.3, $34, [2]
    


'DEBUG a gonder
    For ADCsay  = 0 To 31
        EPS_ADCValByte[2*ADCsay]   = EPS_ADCVal[ADCsay] & $0F
        EPS_ADCValByte[2*ADCsay+1] = EPS_ADCVal[ADCsay] & $F0
    Next ADCsay    


'    I2COut PORTC.4, PORTC.3, $38, [DTMFbatt[0],DTMFbatt[1],Str EPS_ADCValByte] 
    I2COut PORTC.4, PORTC.3, $38, [DTMFbatt[0],DTMFbatt[1],DTMFcmd[0],DTMFcmd[1]] 
    DelayMS 20
    
'    DelayMS 20


    'BATARYA SORULARI

    'statussor
'    I2COut PORTC.4, PORTC.3, $54, [1]       'DIKKAT PDF de bu adres 0x2A (1 bit kaydiriyoruz)
'    DelayMS 2
'    I2CIn PORTC.4, PORTC.3, $54, [BATstatus1, BATstatus1] 
'    DelayMS 1


    'BATARYA degerlerini oku   
'    For ADCsay  = 0 To 15
'        I2COut PORTC.4, PORTC.3, $54, 0, [ADCsay]       'DIKKAT PDF de bu adres 0x2A (1 bit kaydiriyoruz)
'        DelayMS 4
'        I2CIn PORTC.4, PORTC.3, $54, [BAT_ADCVal[ADCsay]] 
'        DelayMS 2
'    Next ADCsay

    TPS_Akim = ADIn 1
    TPS_Akim = TPS_Akim >> 2  'TODO kayan ortalama almaliyim
    Cikis_Gucu = ADIn 2
    Cikis_Gucu = Cikis_Gucu >> 2   'TODO kayan ortalama almaliyim


    If TR_MD = TR_ON Then
        Low  TPS2421en
        High LD29300enable
    Else
        High TPS2421en
        Low LD29300enable
        'bu durumda iken PLL i filan herseyi uyku moduna almak lazim.. hatta mumkunse PIC i bile      
    EndIf

    DelayMS 10

'bilerek bekletiyorum 
'debug hizini yakalamak icin
'normalde bekleme kaldirilacak
    DelayMS 1000
    
   
   
GoTo Main



Antenleri_ac:

    DelayMS 1000

    Return    


Pll_Programla:
    DataOut =  %000000000000000100110000010000
    GoSub Pllgonder
    DataOut =  %000000001101100000011110101101
    GoSub     Pllgonder
    DataOut =  %000000010000000010100000010000
    GoSub Pllgonder
    DataOut =  %000000011011111101010011011000
    GoSub     Pllgonder
    Return


Pllgonder:
    For sayac = 1 To 23
        Low pllDATA
        If (DataOut & 1) = 1 Then High pllDATA
        DataOut = DataOut >> 1
        DelayUS 10
        High pllCLK
        DelayUS 10
        Low pllCLK
        DelayUS 10
    Next sayac

    High pllLE
    DelayUS 10
    Low pllLE                                 ' enable'yi 0 yap
    DelayUS 10

Return


