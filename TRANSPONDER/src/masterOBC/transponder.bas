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
TRANSPONDER_MODE = LAB


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

'Initialise I2C slave mode
Dim Slave_Address As Byte
    Slave_Address = $14
'SSP1ADD = Slave_Address                  ' Set our Address
'SSP1CON2 = 0                             ' General call address disabled
'SSP1CON1 = $36                           ' Set to I2C slave with 7-bit address
SSPADD = Slave_Address                  ' Set our Address
SSPCON2 = 0                             ' General call address disabled
SSPCON1 = $36                           ' Set to I2C slave with 7-bit address

Dim I2C_Data[10]  As Byte               ' I2C Verisini tutmak icin dizi
Dim I2C_DataCount As Byte               ' I2C verisi icin sayici
    I2C_DataCount = 0

TMR1_Enable = 0
 
PEIE = 1 ' Peripheral Interrupts
T1CON.1 = 0 ' 1 = External clock from pin RC0/T1OSO/T1CKI (on the rising edge)  ' 0 = Internal clock (FOSC/4)  'TRISC.0 = 1 ' If External clock, then set clock as an input  'HPWM 1,128,32000 ' Set TMR1's External Source   T1CON.2 = 1 ' 1 = Do not synchronize external clock input  ' 0 = Synchronize external clock input  ' When T1CON.1 = 0;  ' this bit is ignored. Timer1 uses the internal clock when TMR1CS = 0. 
T1CON.4 = 0 ' 11 = 1:8 prescale value  T1CON.5 = 0 ' 10 = 1:4 prescale value  ' 01 = 1:2 prescale value  ' 00 = 1:1 prescale value  Timer1 = TMR1_Val

SSPIF = 0 ' clear SSP1 flag
SSPIE = 1 ' enable the Interrupt    
SMP = 1 'set the rate to 100KHz


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
 
 
 If SSPIF = 1 Then
    SSPIF = 0                             ' interrupt flag'i temizle
'    If SSP1STAT.4 = 1 Then I2C_DataCount = 0 ' stop isareti geldi.. oyleyse sayacimizi sifirlayalim
    If SSPSTAT.4 = 1 Then I2C_DataCount = 0 ' stop isareti geldi.. oyleyse sayacimizi sifirlayalim

    If R_W = 1 Then                       ' master bize veri gonderecek        
'        SSP1BUF = RESPONSE
        SSP1BUF = 0
        SSP1BUF = DURUM
        CKP = 1
    Else
        DURUM = 0xFF
        If BF = 1 Then                    ' veri geldi.. buffer doldu
           'If D_A = 1 Then                ' gelen veri adres degil (zaten adress match durumdaydi..) data.. oyleyse KOMUT = data
'               LastData = SSP1BUF          ' veriyi oku
               LastData = SSPBUF          ' veriyi oku
               I2C_Data[I2C_DataCount] = LastData
                    S = 0
                    mn = 0
                    hr   = 0
                    dy    = 0

               Inc I2C_DataCount
               If I2C_Data[0] = 0x15 Then 'And I2C_DataCount >= 1 Then 
               'If LastData = 0x18 Then
                    TR_MD = TR_ON   'komutu isle.. transponder ac       
                    'RESPONSE = 0x0A
                    DURUM = 0x0A
                    I2C_DataCount = 0
               EndIf
               If I2C_Data[0] = 0x16 Then 'And I2C_DataCount >= 1 Then
               'If LastData = 0x16 Then
                    TR_MD = TR_OFF  'komutu isle.. transponder kapa     
                    'RESPONSE = 0x0A
                    DURUM = 0x0A
                    I2C_DataCount = 0
               EndIf
               If I2C_Data[0] = 0x17 Then 'And I2C_DataCount >= 1 Then
                    'RESPONSE = 0xFF
                    DURUM = 0xFF
                    If TR_MD = TR_ON  Then DURUM = 0x15 'RESPONSE = 0x15
                    If TR_MD = TR_OFF Then DURUM = 0x16 'RESPONSE = 0x16
                    I2C_DataCount = 0
               EndIf
               If I2C_Data[0] = 0x18 Then 'And I2C_DataCount >= 1 Then
                    'RESPONSE = 0xFF
                    DURUM = TPS_Akim
                    I2C_DataCount = 0
               EndIf
               If I2C_Data[0] = 0x1A Then 'And I2C_DataCount >= 1 Then
                    'RESPONSE = 0xFF
                    Pwm_val = 5
                    DURUM = Pwm_val
                    I2C_DataCount = 0
               EndIf
               If I2C_Data[0] = 0x1B Then 'And I2C_DataCount >= 1 Then
                    'RESPONSE = 0xFF
                    Pwm_val = 64
                    DURUM = Pwm_val
                    I2C_DataCount = 0
               EndIf
               If I2C_Data[0] = 0x1C Then 'And I2C_DataCount >= 1 Then
                    'RESPONSE = 0xFF
                    Pwm_val = 127
                    DURUM = Pwm_val
                    I2C_DataCount = 0
               EndIf
               If I2C_Data[0] = 0x20 Then 'And I2C_DataCount >= 1 Then
                    'RESPONSE = 0xFF
                    DURUM = Cikis_Gucu
                    I2C_DataCount = 0
               EndIf
               If SSPOV = 1 Then SSPOV = 0
           'EndIf
        EndIf
    EndIf
 'I2C collision ve errorlari temizle
 If R_W = 0 And SSPOV = 1 Then  SSPOV = 0
 CKP = 1
 If R_W = 1 And WCOL = 1 Then WCOL = 0
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
Main:

If dy >= 14 Then
   If dy < 20 Then
      TR_MD = TR_ON
      If mn  > 5 Then
        TR_MD = TR_OFF
      Else If mn > 15 Then
        TR_MD = TR_ON
      Else If mn > 20 Then
        TR_MD = TR_OFF
      Else If mn > 30 Then
        TR_MD = TR_ON
      Else If mn > 35 Then
        TR_MD = TR_OFF
      Else If mn > 45 Then
        TR_MD = TR_ON
      Else If mn > 50 Then
        TR_MD = TR_OFF
      EndIf
   Else
      TR_MD = TR_OFF
      'PWRled = 0
      dy = 7
   EndIf
EndIf



Dim say As Byte

For say = 1 To 20
    'BURADA SISTEMIN ENERJISINI KONTROL EDIYORUM
    If TR_MD = TR_ON Then
        Low  TPS2421en
        High LD29300enable
    Else
        High TPS2421en
        Low LD29300enable
        'bu durumda iken PLL i filan herseyi uyku moduna almak lazim.. hatta mumkunse PIC i bile       
    EndIf
    'Bu akim degerini kullanarak calisma durumumuz ile ilgili hata kodu uretebiliriz.
    TPS_Akim = ADIn 1
    TPS_Akim = TPS_Akim >> 2
   
    'burada cikis gucunu okuyacagim
   
    Cikis_Gucu = ADIn 2
    Cikis_Gucu = Cikis_Gucu >> 2
   
    'If TPS_Akim > 2048 Then
    '    High PORTC.6
    'Else
    '    Low PORTC.6   
    'EndIf

    'if SaniyeBekle.0 = 1 then
     '   Toggle TPS3823WDI  'WatchDog u bilgilendir
     '   'SaniyeBekle = 10
           
    'endif
    'TPS3823WDI = mS.7
    DelayMS 250
    Toggle TPS3823WDI
    DelayMS 250
    Toggle TPS3823WDI
    Toggle PORTB.0 'canlilik LED'i
Next say
   
   
    GoSub Pll_Programla
    'If mS = 0 Then pllyaz_latch = 1
   
    'If pllyaz_latch = 1 And S = 5 Then
    '    GoSub Pll_Programla
    '    pllyaz_latch = 0
    'EndIf
    'DelayMS 1500
    'GoSub Pll_Programla
GoTo Main



Pll_Programla:

        'bu kismin hesaplamasini kod icine koyup, disardan frekansi parametre olarak alacagim
    'IF icin parametrelerim
    'OSC =4Mhz, Freq Range 230-235Mhz, M=16, ChSpacing=10Khz, FRQ=232.810Mhz (Ch 281) //DIKKAT 815 olmali
    'IF reference clock degerini PLL'e gonder
                      '12345678901234567890123
    DataOut =  %000000000000000100110000010000
    GoSub Pllgonder
    'IF swallow counter degrlerini PLL'e gonder
                      '12345678901234567890123
    DataOut =  %000000001101100000011110101101
    GoSub     Pllgonder
    'RF icin parametrelerim
    'OSC =4Mhz, Freq Range 348-349Mhz, M=64, ChSpacing=25Khz, FRQ=348.375Mhz (Ch 15) A:47 N:217  R:160  FC:1 LDS:0 Bit19:1
    'RF reference clock degerini PLL'e gonder
                      '12345678901234567890123
    DataOut =  %000000010000000010100000010000
    GoSub Pllgonder
    'RF swallow counter degrlerini PLL'e gonder
                      '12345678901234567890123
    DataOut =  %000000011011111101010011011000
    GoSub     Pllgonder

    Return


Pllgonder:
'Data ve CLK ucundan PLL'e veri gonderir
'In: DataOut degiskenindeki veri
'Out: plldata, pllclk ucundan seri data
' IF/RF reference counter icin CN1-CN2-T1-T2-R1-R2-R3-R4-R5-R6-R7-R8-R9-R10-R11-R12-R13-R14-CS--X-X-X-X
' IF/RF swallow counter icin   CN1-CN2-LDS-SW-FC-A1-A2-A3-A4-A5-A6-A7-N1-N2-N3-N4-N5-N6-N7-N8-N9-N10-N11

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




'I2C interruptini buraya yazacagim
' I2C base address 14
' acma komutu 0x15
' kapama komutu 0x16
'
 
' I2C adresi read write biti dahil olmadan 0x14 (7-bit).
' I2C bus hizimiz 100kHz.
' Biz size açma-kapama komutu gönderdikten sonra sizden OK (0x0A) ya da ERROR (0xFF) bekleyecegiz.

'Örnek Haberlesme:
'OBC: I2C START
'OBC: I2C Adresi (0x15) + Read-Write biti (WRITE)
'TAMSAT: ACK
'OBC: 0x15 (Transponder Açma Komutu) veya 0x16 (Transponder Kapama Komutu)
'TAMSAT: ACK
'OBC: I2C STOP
'
'100 milisaniye bekleme.
'
'OBC: I2C START
'OBC: I2C Adresi (0x15) + Read-Write biti (READ)
'TAMSAT: 0x0A (Eger Komut alinmissa), 0xFF (Eger  Komut alinmamissa)
'OBC: I2C STOP
'
'
'Biz komut göndermeden veri istedigimizde 0xFF dönmesi lazim. 0x0A ve 0xFF sadece komut alindi mi emin olmak için.
