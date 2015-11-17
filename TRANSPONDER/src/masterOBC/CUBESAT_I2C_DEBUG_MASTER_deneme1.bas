Device = 16F877
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, BOREN_ON, LVP_OFF, CPD_OFF, WRT_OFF, DEBUG_OFF, CP_OFF

Xtal=4 'dikkat gercek ortamda 20 yap
All_Digital = True

Declare LCD_Interface = 4
Declare LCD_DTPin = PORTD.4
Declare LCD_RSPin = PORTD.2 'RS pin del LCD
Declare LCD_ENPin = PORTD.3 'EN pin del LCD
Declare LCD_Lines = 2 '2 lines LCD
Declare BUS_SCL On 

'Declare SDA_Pin PORTC.4
'Declare SCL_Pin PORTC.3
TRISC.3 = 1
TRISC.4 = 1

Symbol SSPM0 = SSPCON.0 ' Synchronous Serial Port Mode Select bits
Symbol SSPM1 = SSPCON.1 ' Synchronous Serial Port Mode Select bits
Symbol SSPM2 = SSPCON.2 ' Synchronous Serial Port Mode Select bits
Symbol SSPM3 = SSPCON.3 ' Synchronous Serial Port Mode Select bits
Symbol CKP   = SSPCON.4 ' Clock Polarity Select bit
Symbol SSPEN = SSPCON.5 ' Synchronous Serial Port Enable flag
Symbol SSPOV = SSPCON.6 ' Receive Overflow Indicator flag
Symbol WCOL  = SSPCON.7 ' Write Collision Detect flag

SSPCON =  %00101000 '$38

Symbol BF   = SSPSTAT.0  ' Buffer Full Status flag
Symbol UA   = SSPSTAT.1  ' Update Address (10-bit I2C mode only)
Symbol R_W  = SSPSTAT.2  ' Read/Write bit information (I2C mode only)
Symbol S    = SSPSTAT.3  ' I2C Start
Symbol P    = SSPSTAT.4  ' I2C Stop
Symbol D_A  = SSPSTAT.5  ' Data/NOT Address bit (I2C mode only)
Symbol CKE  = SSPSTAT.6  ' SPI Clock Edge Select
Symbol SMP  = SSPSTAT.7  ' Sample bit

SSPSTAT = 0
SMP = 1 'disabled


Symbol RBIF = INTCON.0 ' RB Port Interrupt Flag
Symbol INTF = INTCON.1 ' RB0 External Interrupt Flag
Symbol T0IF = INTCON.2 ' TMR0 Overflow Interrupt Flag
Symbol RBIE = INTCON.3 ' RB Port Change Interrupt Enable
Symbol INTE = INTCON.4 ' RB0 External Interrupt Enable
Symbol T0IE = INTCON.5 ' TMR0 Overflow Interrupt Enable
Symbol PEIE = INTCON.6 ' Peripheral Interrupt Enable
Symbol GIE  = INTCON.7 ' Global Interrupt Enable

PEIE = 1
INTCON = %11000000  'PIE ve GIE acik, 

'SSPSTAT = $80     ' %10000000
'SSPCON  = $28     ' %00101000  sspen. I2C master clk=fosc/(4*(sspadd+1)) 
'SSPADD  = $49     ' %01001001  clk = 100 Khz

Declare Hbus_Bitrate 100
Declare Slow_Bus On         ;12c bus 100Khz


Symbol TMR1IF   = PIR1.0 ' TMR1 Overflow Interrupt Flag
Symbol TMR2IF   = PIR1.1 ' TMR2 to PR2 Match Interrupt Flag
Symbol CCP1IF   = PIR1.2 ' CCP1 Interrupt Flag
Symbol SSPIF    = PIR1.3 ' Synchronous Serial Port (SSP) Interrupt Flag
Symbol TXIF     = PIR1.4 ' USART Transmit Interrupt Flag
Symbol RCIF     = PIR1.5 ' USART Receive Interrupt Flag
Symbol ADIF     = PIR1.6 ' A/D Converter Interrupt Flag
Symbol PSPIF    = PIR1.7 ' Parallel Slave Port Read/Write Interrupt Flag

SSPIF = 0

Symbol CCP2IF   = PIR2.0 ' CCP2 Interrupt Flag
Symbol BCLIF    = PIR2.3 ' Bus Collision Interrupt Flag
Symbol EEIF     = PIR2.4 ' EEPROM Write Operation Interrupt Flag

BCLIF = 0

Symbol SEN      = SSPCON2.0 ' Start Condition Enabled bit (In I2C master mode only)
Symbol RSEN     = SSPCON2.1 ' Repeated Start Condition Enabled bit (In I2C master mode only)
Symbol PEN      = SSPCON2.2 ' Stop Condition Enable bit (In I2C master mode only)
Symbol RCEN     = SSPCON2.3 ' Receive Enable bit (In I2C master mode only)
Symbol ACKEN    = SSPCON2.4 ' Acknowledge Sequence Enable bit (In I2C master mode only)
Symbol ACKDT    = SSPCON2.5 ' Acknowledge Data bit (In I2C master mode only)
Symbol ACKSTAT  = SSPCON2.6 ' Acknowledge Status bit (In I2C master mode only)
Symbol GCEN     = SSPCON2.7 ' General Call Enable bit (In I2C slave mode only)

SSPCON2 = 0

Symbol TMR1IE   = PIE1.0 ' TMR1 Overflow Interrupt Enable
Symbol TMR2IE   = PIE1.1 ' TMR2 to PR2 Match Interrupt Enable
Symbol CCP1IE   = PIE1.2 ' CCP1 Interrupt Enable
Symbol SSPIE    = PIE1.3 ' Synchronous Serial Port Interrupt Enable
Symbol TXIE     = PIE1.4 ' USART Transmit Interrupt Enable
Symbol RCIE     = PIE1.5 ' USART Receive Interrupt Enable
Symbol ADIE     = PIE1.6 ' A/D Converter Interrupt Enable
Symbol PSPIE    = PIE1.7 ' Parallel Slave Port Read/Write Interrupt Enable bit

'TMR1ie = 1
SSPIE = 1

Symbol CCP2IE   = PIE2.0 ' CCP2 Interrupt Enable
Symbol BCLIE    = PIE2.3 ' Bus Collision Interrupt Enable
Symbol EEIE     = PIE2.4 ' EEPROM Write Operation Interrupt Enable

BCLIE = 1

Symbol TMR1ON       = T1CON.0 ' Timer1 ON
Symbol TMR1CS       = T1CON.1 ' Timer1 Clock Source Select
Symbol NOT_T1SYNC   = T1CON.2 ' Timer1 External Clock Input Synchronization Control
Symbol T1OSCEN      = T1CON.3 ' Timer1 Oscillator Enable Control
Symbol T1CKPS0      = T1CON.4 ' Timer1 Input Clock Prescale Select bits
Symbol T1CKPS1      = T1CON.5 ' Timer1 Input Clock Prescale Select bits

'tmr1on = 1
'tmr1ie = 1

't1con = %00110000
'tmr1l = $5e
'tmr1h = $98

'tmr1if = 0



'Declare Hbus_Bitrate  100
ADCON0 = 0

SSPADD = 9 '100khz

Dim state As Byte
state = 0
Dim datain As Byte
Dim index_i2c       As Byte

Symbol RX_ELMNTS = 15
Dim I2C_Array_Rx[RX_ELMNTS] As Byte
Dim I2C_Array_Tx[RX_ELMNTS] As Byte

Dim write_to_slave  As Byte 
Dim init_start      As Byte
Dim init_trans_data As Byte
Dim done            As Byte
Dim mstop           As Byte
Dim trans_wrt_add   As Byte
Dim trans_data      As Byte
Dim read_from_slave As Byte
Dim trans_rd_add    As Byte
Dim read_rec_byte   As Byte
Dim set_ACKEN       As Byte
Dim init_mstr_rec   As Byte
Dim set_RCEN        As Byte
Dim rec_byte        As Byte
write_to_slave  = 1
init_start      = 1
init_trans_data = 0
done            = 0
mstop           = 0
trans_wrt_add   = 1
trans_data      = 0
read_from_slave = 0
trans_rd_add    = 1
read_rec_byte   = 0
set_ACKEN       = 0
init_mstr_rec   = 0
set_RCEN        = 0
rec_byte        = 0

Symbol I2C_slave_write_add = $32
Symbol I2C_slave_read_add  = $33





GIE = 1 
On_Interrupt GoTo myinterrupt
GoTo Main

myinterrupt:
    Context Save
    GIE = 0
    If SSPIF = 1 Then
        If write_to_slave = 1 Then
            If done = 0 Then
                If trans_wrt_add = 1 Then
                    SSPBUF = I2C_slave_write_add
                    trans_wrt_add = 0
                    init_trans_data = 1
                EndIf
                If trans_data = 1 Then
                    If index_i2c < RX_ELMNTS Then
                        SSPBUF = $44 'I2C_Array_Tx[index_i2c]
                        I2C_Array_Tx[index_i2c] = 0;
                    Else
                        trans_data = 0
                        done = 1
                    EndIf
                EndIf
            EndIf        
            If mstop = 1 Then
                write_to_slave = 0
                mstop = 0
            EndIf
        EndIf
        If read_from_slave = 1 Then
            If done = 0 Then
                If trans_rd_add = 1 Then
                    SSPBUF = I2C_slave_read_add
                    trans_rd_add = 0
                    init_mstr_rec = 1
                EndIf
                If set_RCEN = 1 Then
                    set_RCEN = 0
                    RCEN = 1
                    rec_byte = 1
                EndIf
                If read_rec_byte = 1 Then
                    If index_i2c < RX_ELMNTS Then
                        read_rec_byte = 0
                        rec_byte = 0
                        I2C_Array_Rx[index_i2c] = SSPBUF
                        'datain = sspbuf
                        Inc index_i2c
                        set_ACKEN = 1
                    Else
                        init_mstr_rec = 0
                        rec_byte = 0
                        read_rec_byte = 0
                        done = 1
                    EndIf
                EndIf
            EndIf
            If mstop = 1 Then
                read_from_slave = 0
            EndIf
        EndIf                

    EndIf  'sspif
    If BCLIF = 1 Then
        datain = SSPBUF
        BCLIF = 0    
    EndIf
    SSPIF = 0
    GIE = 1
    Context Restore


Main:

       
Dongu:

    If write_to_slave = 1 Then 
        If init_start = 1 Then
            SEN = 1
            init_start = 0
        EndIf
        datain = 1
        datain = 1
        datain = 1
        datain = 1
        datain = 1
        datain = 1
        datain = 1
        datain = 1
        datain = 1
'        If init_trans_data = 1 Then
            trans_data = 1
            init_trans_data = 0
'        EndIf
        If done = 1 Then
            mstop = 1
            done = 0
            PEN = 1
        EndIf
    EndIf 
    If write_to_slave = 0 And read_from_slave = 0 Then
        read_from_slave = 1
        done = 0
        init_start = 1
        'index_i2c = 0
    EndIf
    If read_from_slave = 1 Then
        If init_start = 1 Then 
            SEN = 1
            init_start = 0
        EndIf
        If init_mstr_rec = 1 Then
            RCEN = 1
            init_mstr_rec = 0
        EndIf
        If set_ACKEN = 1 Then
            set_ACKEN = 0
            init_mstr_rec = 1
            ACKEN = 1
        EndIf
        If done = 1 Then
            mstop = 1
            PEN = 1
        EndIf
    EndIf

    
    'DelayMS 1000

    GoTo Dongu        

End
