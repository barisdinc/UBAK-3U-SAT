; PORT B	               PORT A
; PB0 ----                 PA0   batarya VCC/2  		
; PB1 ---- 		           PA1   LED
; PB2 ---- 		           PA2   alici besleme aktif "H"
; PB3 ---- 	D0	           PA3   
; PB4 ---- 	D1	           PA4   8870 OE aktif "H"
; PB5 ---- 	D2	
; PB6 ---- 	D3
; PB7 ----  DAT


'PARAMETRELER
'KOMUTlen gonderilen DTMF kodun uzunlugu
'


'I2C komutlari
'0x00 durum sorgula (cevap 1 byte)  
'0x01 son komut nedir (cevap KOMUTlen Byte) 
'0x02 0xNN  alici acik kalma suresini NN dakika yap !!! Henuz yazilmadi
'0x03 0xNN  alici kapali kalma suresini NN dakika yap !!! Henuz yazilmadi
'0x04 batarya durumunu soyle (2 byte)


Device = 16F88
'@CONFIG_REQ
'@__CONFIG    _CONFIG1, CP_OFF & DEBUG_OFF & WRT_PROTECT_OFF & CPD_OFF & LVP_OFF & BODEN_ON & MCLR_ON & PWRTE_ON & WDT_OFF & XT_OSC & IESO_OFF & FCMEN_OFF
'Config CP_OFF , DEBUG_OFF , WRT_PROTECT_OFF , CPD_OFF , LVP_OFF , BODEN_ON , MCLR_ON , PWRTE_ON , WDT_OFF , XT_OSC , IESO_OFF , FCMEN_OFF
Config CP_OFF , DEBUG_OFF , WRT_PROTECT_OFF , CPD_OFF , LVP_OFF , BODEN_ON , MCLR_ON , PWRTE_ON , WDT_OFF , HS_OSC , IESO_OFF , FCMEN_OFF
Xtal 20


All_Digital true

'Declare Hbus_Bitrate  100

Symbol I2CADDR $32 '(7 bit) PROTEUSdan konusurken 0x64 ile konus

''state makinesi
'Symbol st_adres 0
'Symbol st_komut 1
'Symbol st_uyu   2
'Symbol st_uyan  3
'Dim durum As Byte 'state machine durumu
'durum = st_adres 'adres bekliyoruz

'DTMF  hatalari
Symbol  err_YOK   0  'hata yok
Symbol  err_DEVAM 1  'yeni komut okuma islemi devam ediyor
Symbol  err_UZUN  2  'son gelen komut uzun
Symbol  err_KISA  3  'son gelen komut kisa
Symbol  err_CSUM  4  'checksum hatali komut geldi
Dim     last_ERR As Byte
last_ERR = err_YOK
Symbol  LED PORTA.1

Dim data_count As Byte
data_count = 0
TRISB = $FF
TRISA.0 = 1
TRISA.2 = 0
TRISA.4 = 0
                                                              
Symbol PS0      = OPTION_REG.0 ' Prescaler Rate Select
Symbol PS1      = OPTION_REG.1 ' Prescaler Rate Select
Symbol PS2      = OPTION_REG.2 ' Prescaler Rate Select
Symbol PSA      = OPTION_REG.3 ' Prescaler Assignment
Symbol INTEDG   = OPTION_REG.6 ' Interrupt Edge Select
Symbol NOT_RBPU = OPTION_REG.7 ' PORTB Pull-up Enable

NOT_RBPU = 1 ' PULLUP Lari iptal et... aman dikkat.. bunu sadece I2c icin yaptim.. normalde indirmem lazim
INTEDG = 0
PSA = 0 'timer0

Symbol BF = SSPSTAT.0        ' Buffer Full Status flag
Symbol UA = SSPSTAT.1        ' Update Address (10-bit I2C mode only)
Symbol R_W = SSPSTAT.2       ' Read/Write bit information (I2C mode only)
Symbol S = SSPSTAT.3         ' I2C Start
Symbol P = SSPSTAT.4         ' I2C Stop
Symbol D_A = SSPSTAT.5       ' Data/NOT Address bit (I2C mode only)
Symbol CKE = SSPSTAT.6       ' SPI Clock Edge Select
Symbol SMP = SSPSTAT.7       ' Sample bit

Symbol CKP      = SSPCON.4  ' Clock Polarity Select bit
Symbol SSPEN    = SSPCON.5  ' Synchronous Serial Port Enable flag
Symbol SSPOV    = SSPCON.6  ' Receive Overflow Indicator flag
Symbol WCOL     = SSPCON.7  ' Write Collision Detect flag

Symbol RBIF     = INTCON.0  ' RB Port Interrupt Flag
Symbol INT0IF   = INTCON.1  ' RB0 External Interrupt Flag
Symbol TMR0IF   = INTCON.2  ' TMR0 Overflow Interrupt Flag
Symbol RBIE     = INTCON.3  ' RB Port Change Interrupt Enable
Symbol INT0IE   = INTCON.4  ' RB0 External Interrupt Enable
Symbol TMR0IE   = INTCON.5  ' TMR0 Overflow Interrupt Enable
Symbol PEIE     = INTCON.6  ' Peripheral Interrupt Enable
Symbol GIE      = INTCON.7  ' Global Interrupt Enable

INTCON = %11010000  'PIE ve GIE acik, RB0 interrupt da acik

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

ANSEL  = %00000001 'sadece AN0 (PORTA.0), batarya durumuna bagli
ADCON0 = %11000001 'GO_DONE i set ederek conversion yaptiracagim
ADCON1 = %10000010 '
ADIF = 0 'interrupt flag temizle
ADIE = 0 'interrupt i aktive et
PEIE = 1 'Peripheral interrupt (yukarida acmistik ama olsun)
 
SSPADD = I2CADDR    '7-Bit address  b00110110
SSPCON = $36        'I2C slave mode 


PEIE = 1 'peripheram kesmeler aktif
GIE  = 1 'global kesmeleri aktif et



Dim     datain    As Byte
Dim     dataout   As Byte
Dim     datacnt   As Byte
Dim     DTMF      As Byte
Dim     KOMUT[8]  As Byte   '*11114#
KOMUT = 11,1,1,1,1,4,12   'varsayilan mesaj *11114#
Symbol  KOMUTlen 6   'gelecek olan komutun uzunlugu 7'dir (0'dan saymaya basliyoruz) ornek: *11114#
Dim     lastKOMUT[8]  As Byte
lastKOMUT = KOMUT
Dim     DTMFcount As Byte
Dim     CEVAP[10] As Byte   'I2C ye verilecek cevap
Dim     CEVAPlen  As Byte   'I2C cevabinin uzunlugu
Dim     CEVAPpos  As Byte   'CEVAP icindeki pozisyonumuz (kacinci byte i gonderiyoruz)
Dim     BATARYA[2] As Byte   'Batarya durumu (AN0 daki ADC den)

Symbol STATE1 = $09          ' D_A=0,S=1,R/W=0,BF=1. Master Tx, slave addr
Symbol STATE2 = $29          ' D_A=1,S=1,R/W=0,BF=1. Master Tx, Data
Symbol  STATE3 = $0C          ' D_A=0,S=1,R/W=1,BF=0. Master Rx, slave addr+1
Symbol STATE4 = $2C          ' D_A=1,S=1,R/W=1,BF=0. Master Rx, Data with ACK
Symbol STATE5 = $28          ' D_A=1,S=1,R/W=0,BF=0. Master Rx, Data with NACK  

Dim CASE_SWITCH As Byte 
Symbol DataBufferLen = 200    ' RX Buffer size
Dim DataBufferIndex As Byte ' RX Buffer current Index
Dim DataAvailable As Boolean
Dim DataBuffer[DataBufferLen] As Byte
Dim WCOLcounter As Byte
Dim mycount As Byte


On_Interrupt GoTo myinterrupt
GoTo Basla
myinterrupt:
    Context Save
    GIE = 0
'    If SSPIF  = 1 Then  GoSub i2cslave   ' I2C interrupt
    If SSPIF = 1 Then
        SSPIF = 0
'        If R_W = 0 Then
'                SSPOV = 0                             
'                CKP = 0                               
'                datain = SSPBUF 
'                CKP = 1                               
'        EndIf
        If R_W = 1 Then
'            If BF = 1 Then Clear SSPBUF
            If D_A = 0 Then
                WCOL = 0                             
                If BF = 0  Then SSPOV = 1
'                CKP = 0
                SSPBUF = $36
                CKP = 1
            Else
'                WCOL = 0                             
'                CKP = 0                               
                SSPOV = 1
'                'Clear SSPBUF
                SSPBUF = $63
                CKP = 1                               
            EndIf
        EndIf
    EndIf 'SSPIF = 1



    
    If INT0IF = 1 Then GoSub RB0int     ' RB0 interrupt
    If ADIF   = 1 Then GoSub ADCONready ' ADC cevrimi bitmis
    GIE = 1
    Context Restore

ADCONready:
    ADIF = 0
    BATARYA[0] = ADRESH 
    BATARYA[1] = ADRESL
    If (BATARYA[0] * 256 + BATARYA[1]) > 500 Then 
        High PORTA.2   'telsizi ac    
    Else
        Low PORTA.2
    EndIf    
    Return


RB0int:                                 '8870 cikisinda hazir bekleyen DTMF var
    INT0IF = 0                          ' clear flag
    DTMF = (PORTB.6 * 8) + (PORTB.5 * 4) + (PORTB.2 * 2) + PORTB.3 
    If DTMF = 11 Then                   '* geldi, bastan say
        last_ERR  = err_DEVAM  'islem yapma durumundayiz.. birileri DTMF gonderiyor
        DTMFcount = 0
    Else
        DTMFcount = DTMFcount + 1
    EndIf 
    Toggle LED
    KOMUT[DTMFcount] = DTMF
    If DTMF = 12 Then                 '#geldi, bitiriyoruz
        last_ERR = err_YOK            'baslangicta hata yok
        If DTMFcount = KOMUTlen Then  'dogru sayida rakam var
           Dim CSUM As Byte           'checksum
           CSUM = 0
           Dim sayac  As Byte
           For sayac = 1 To KOMUTlen - 2 'ilk karakter * sonuncu karakter #, sonraki de zaten CSUM,  onlari toplamiyoruz
                CSUM = CSUM + KOMUT[sayac]
           Next sayac     
           If KOMUT[5] = (CSUM & $0F) Then  'Checksum Dogru 
                lastKOMUT = KOMUT           'gecirli son komut bu gelendir
           Else
                last_ERR = err_CSUM
           EndIf
        EndIf
        If DTMFcount < (KOMUTlen - 1) Then  last_ERR = err_KISA  'eksik sayida rakam var
        If DTMFcount > (KOMUTlen + 1) Then  last_ERR = err_UZUN  'eksik sayida rakam var
    EndIf
    If DTMFcount > KOMUTlen Then '# gelmedi ama hala karakter geliyor ise, basa dondur ve hata kaydet
        DTMFcount = 0 
        last_ERR = err_UZUN
    EndIf
    Return 

'arnika bora 4000  259 /329

i2cslave: 
    Clear SSPIF
    If R_W = 1 Then datain = SSPBUF
                                             





    Return

i2cwr:    
    datain = SSPBUF                 ' I2C write data to bus
    SSPOV = 0
'    CEVAPpos = 0     'asagiya koydum buna gerek kalmayabilir
'    If datain = $00 Then        ' gelen komut durum sorgulama ise
'        CEVAP[0] = last_ERR
'        CEVAPlen = 1      
'    EndIf    
'    If datain = $01 Then        ' gelen komut KOMUT sorgulama ise
'        CEVAP = lastKOMUT
'        CEVAPlen = 7              
'    EndIf    
'    If datain = $04 Then        ' gelen komut KOMUT sorgulama ise
'        CEVAP = BATARYA
'        CEVAPlen = 2       'batarya degeri 2 byte uzunlugunda      
'        GO_DONE = 1         'yeni batarya durumunu da oku, aslinda her sorguda bir onceki batarya durumunu gonderiyoruz
'    EndIf    
    'CKP = 1
    'WCOL = 0
    'SSPBUF = 0
    Return


i2crd:  
    SSPBUF = $36 'CEVAP[CEVAPpos]
    'If WCOL = 1 Then GoTo writedata
    'If CEVAPpos < CEVAPlen Then CEVAPpos = CEVAPpos + 1  'cevap uzunluguna kadar ilerle.. hala bilgi istiyorsa son datayi yolla
    'WCOL = 0
'    CKP = 1 
                                ' Release SCL line
    Return


Basla:    
    DelayMS 100   
    High PORTA.4        '8870 OE i aktive et        
    GO_DONE = 1         'ADC cevrimini baslat
    
Dongu: 
    'sonsuz dongu
    GoTo Dongu  
              



End




