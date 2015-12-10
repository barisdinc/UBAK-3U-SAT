'CUBESAT icin LCD ekrana Debug yazma cihazi

Device = 16F88
Config _CP_OFF , _DEBUG_OFF , _WRT_PROTECT_OFF , _CPD_OFF , _LVP_OFF , _BODEN_ON , _MCLR_ON , _PWRTE_ON , _WDT_OFF , _XT_OSC, _IESO_OFF , _FCMEN_OFF

Xtal 4

Declare Hbus_Bitrate  100

Dim DATACOUNT As Word
DATACOUNT = 0

Symbol st_adres 0
Symbol st_reset 1
Symbol st_eps   2
Symbol st_pil   3
Dim durum As Byte 'state machine durumu
durum = st_adres 'adres bekliyoruz 


Dim data_count As Byte
data_count = 0

Symbol SSPIF	PIR1.3          	' SSP (I2C) interrupt flag
Symbol BF		SSPSTAT.0       	' SSP (I2C) Buffer Full
Symbol R_W		SSPSTAT.2       	' SSP (I2C) Read/Write
Symbol D_A		SSPSTAT.5       	' SSP (I2C) Data/Address
Symbol CKP		SSPCON.4        	' SSP (I2C) SCK Release Control
Symbol SSPEN	SSPCON.5        	' SSP (I2C) Enable
Symbol WCOL		SSPCON.7        	' SSP (I2C) Write Collision Detect
Dim datain As Byte
Dim dataout As Byte

Dim Reset_Count As Word
Reset_Count = 0


TRISB = %11111111
TRISA = 0

Main:	'
        SSPADD = $36              			' Initialise I2C slave mode
        SSPCON = $36            		    ' Set to I2C slave with 7-bit address        
        DelayMS 1000
        GoTo Again
                
On_Interrupt GoTo i2cslave        

i2cslave: 
Context Save

 GIE = 0
        SSPIF = 0               			' Clear interrupt flag
        If R_W = 1 Then i2crd   			' Read data from bus
        If BF = 0 Then Return  				' Nothing in buffer so exit
        If D_A = 1 Then i2cwr   			' Data for bus (not address)
        If SSPBUF != 2 Then Return     		' Clear the address from the buffer
        Return
        
i2cwr:	datain = SSPBUF       				' I2C write data to bus
    If durum = st_reset Then    'bir ond\ceki gelen data bize reset datasinin gelecegini soylemisti, bu data RESET_COUNT
        If data_count = 0 Then 'ilk byte geldi
            Reset_Count  = SSPBUF
            data_count = 0      'data_count + 1 'bir sonrakinde 2. byte gelecek
            durum = st_adres
        EndIf
    Return
    EndIf
            
        
    

    If datain = 1 And durum = st_adres Then durum = st_reset 'reset count gelecek
 
    DATACOUNT = DATACOUNT + 1
        
'        If datain = 2 durum = st_eps   Then durum = st_ 'reet count gelecek
'        If datain = 3 durum = st_pil   Then durum = st_reset 'reet count gelecek

        'DelayMS 1000
        
        Return


i2crd:  SSPBUF = 43 'datain       				' I2C read data from bus
        CKP = 1                 			' Release SCL line

        DelayMS 1000
		Return
        
        
        
                
        
        
        
Again:  'If SSPIF = 1 Then GoSub i2cslave	' Check for I2C interrupt
        'SSPCON.6 = 0						' Clear any I2C collisions or errors
        'WCOL = 0
        GoTo Again           				' Do it all forever




