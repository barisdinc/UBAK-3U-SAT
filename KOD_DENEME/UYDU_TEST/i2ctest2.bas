'CUBESAT icin LCD ekrana Debug yazma cihazi

Device = 16F877
Xtal=20
All_Digital = True
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, BOREN_ON, LVP_OFF, CPD_OFF, WRT_OFF, DEBUG_OFF, CP_OFF

SCL_Pin = PORTC.3 
SDA_Pin = PORTC.4

Declare LCD_Interface = 4
Declare LCD_DTPin = PORTD.4
Declare LCD_RSPin = PORTD.2 'RS pin del LCD
Declare LCD_ENPin = PORTD.3 'EN pin del LCD
Declare LCD_Lines = 2 '2 lines LCD

Declare Hbus_Bitrate  100


TRISB = %11111111


On_Interrupt INT 


Symbol TimeoutBug = 8 'Time before reseting MSSP module due silicon bug
Symbol I2CTimerOut = 4 'time before reseting Register
Symbol AdressI2C $33 ' Adress of component, can be changed
Symbol AdressEEprom %10100000 ' Eprom annexe (put 2 straps and charge SDA and SCL to +5V if necessary

'Assign some Interrupt associated aliases
Symbol GIE INTCON.7 ' Global Interrupt Enable
Symbol PEIE INTCON.6 ' Peripheral Interrupt Enable
Symbol T0IE INTCON.5 ' TMR0 overflow Interrupt Enable
Symbol INTE INTCON.4 ' Enable externall interrupt on B.0
Symbol RBIE INTCON.3 ' RB Port change Interrupt Enable
Symbol T0IF INTCON.2 ' TMR0 Overflow Interrupt flag Enable
Symbol INTF INTCON.1 ' RB0/INT interrupt flag
Symbol RBIF INTCON.0 ' RB port change Interrupt Enable

Symbol TMR1IE PIE1.0 ' Timer1 overflow interrupt enable bit
Symbol SSPIE PIE1.3 ' Asynchronous serial port interrupt enable bit
Symbol RCIE PIE1.5 ' Usart receive interrupt enable bit

Symbol PS0 OPTION_REG.0 ' Prescaler ratio bit-0
Symbol PS1 OPTION_REG.1 ' Prescaler ratio bit-1
Symbol PS2 OPTION_REG.2 ' Prescaler ratio bit-2
Symbol PSA OPTION_REG.3 ' Prescaler Assignment (1=assigned to WDT
'0=assigned to oscillator)
Symbol T0CS OPTION_REG.5 ' Timer0 Clock Source Select (0=Internal
'clock 1=External PORTA.4)

'Define used register flags
Symbol SSPIF PIR1.3 ' SSP (I2C) interrupt flag
Symbol BF SSPSTAT.0 ' SSP (I2C) Buffer Full
Symbol R_W SSPSTAT.2 ' SSP (I2C) Read/Write
Symbol S SSPSTAT.3 'start bit detected if 1
Symbol P SSPSTAT.4 'stop bit detected if 1
Symbol D_A SSPSTAT.5 ' SSP (I2C) Data/Address
Symbol CKE SSPSTAT.6 'input level conform to I²C
Symbol SMP SSPSTAT.7 'slew rate control
Symbol SSPM0 SSPCON.0 'Synchronous serial port mode select bits
Symbol SSPM1 SSPCON.1 '**************************
Symbol SSPM2 SSPCON.2 '**************************
Symbol SSPM3 SSPCON.3 '**************************
Symbol CKP SSPCON.4 ' SSP (I2C) SCK Release Control
Symbol SSPEN SSPCON.5 ' SSP (I2C) Enable
Symbol SSPOV SSPCON.6 ' SSP (I2C) Receive Overflow Indicator
Symbol WCOL SSPCON.7 ' SSP (I2C) Write Collision Detect

'Define registers of Timer1 module
Symbol TMR1IF PIR1.0
Symbol T1CKPS1 T1CON.5
Symbol T1CKPS0 T1CON.4
Symbol T1SYNC T1CON.2
Symbol TMR1CS T1CON.1
Symbol TMR1ON T1CON.0

'Define registers of Serial port
Symbol RCIF PIR1.5
Symbol OERR RCSTA.1
Symbol FERR RCSTA.2
Symbol CREN RCSTA.4
Symbol SPEN RCSTA.7
Symbol BRGH TXSTA.2
Symbol SYNC TXSTA.4

'Allocate RAM for I²C
Dim RW As Byte
Dim DAT As Byte
Dim B As Byte
Dim I2CBUGTimer As Byte
Dim I2CTimer As Byte


'Interrupts routines starts here
INT: 'interrupt origin
If SSPIF <> 0 Then I2CSlave 'interupt from I2CBus
'I2C slave subroutine
I2CSlave:
SSPIF = 0 'reset interrupt flag
I2CTimer = 0
DAT = D_A 'record the different values
RW = R_W
B = BF


If DAT = 0 And RW = 0 Then Register = 0 'initializing a new transfert
'because it's the adress I²C and a Write flag
'Master Read data from bus
If B = 0 Then Terminate
If DAT = 1 Then I2Cwr 'Master write Data on bus (not address)
If SSPBUF! = AdressI2C Then Terminate 'Clear the address from the buffer

Terminate:
If WCOL <> 0 Or SSPOV <> 0 Then Register = 0 'Error
If SSPOV = 1 Then 'Receive Overflow Indicator
SSPOV = 0
Register = SSPBUF
Register = 0
EndIf
WCOL = 0 ' SSP (I2C) Write Collision Detect

Context Restore

'16F877 receive data to bus
I2Cwr:
If Register = 0 Then 'it's the first value so it's an adress
Register = SSPBUF 'Record the value of register
Else
Value[0] = Register 'adress module to write
Value[Register] = SSPBUF 'data receive
Register = 0 'Only one value
EndIf

GoTo Terminate

'16F877 send data on bus
I2Crd:
Repeat Until BF=0 'the last data is now send
WCOL= 0 'erase collision bit
If DAT = 0 Then 'it's the first value to send so the adress confirmation
SSPBUF = Value[$01] ' Get data from array
Else 'it's the second value
TI2C = Value[$01]
I= SSPBUF
I = Value[TI2C]
If I = ValveInfo Then Cls : Print Dec Value[
EndIf
If WCOL = 1 Then GoTo I2Crd 'collision, so restart the procedure
CKP = 1 'release the SCL line

GoTo Terminate
'************************************************* ************************************************** ***


'main program
Main:

'Initialise ports and directions
GIE = 0 'Turn off global interrupts
TRISA = %11111111 'A5,A4,A3,A2,A1,A0 as input
ADCON1 = %10000011 'A0,A1,A2,A5 set analog input, A3 set Vref,
'E0,E1,E2 set Digital I/O
TRISB = %11111100 'B0,B1 as output all the other as input
TRISC = %10011000 'C7,4,3 as input C6,5,2,1,0 as output


'Initialise I2C slave mode
SSPADD = AdressI2C 'Make our address
SSPCON2 = $0 'General call address disabled
SSPM0 = 0 'Set to I2C slave with 7-bit address
SSPM1 = 1 ' *******
SSPM2 = 1 ' *******
SSPM3 = 0 ' *******
SSPEN = 1 'Enable synchronous serial port
CKP = 1 'holds clock low (clock stretch).

'Initiate the I²C interrupt
PEIE = 0 'disable all peripheral interupt
T0IE = 0 'disable the TMR0 interrupt
INTE = 0 'Disable TMR0 overflow interrupt
RBIE = 0 'disable the RB port change interrupt
T0IF = 0 'TMR0 register did not overflow
INTF = 0 'the RB0/INT did not occur
RBIF = 0 'none of the RB7:RB4 have changed state
PSA = 0 'Assign the prescaler to external oscillator
PS0 = 1 'Set the prescaler
PS1 = 1 'to increment TMR0
PS2 = 1 'every 256th instruction cycle
T0CS = 0 'Assign TMR0 clock to internal source
TMR0 = 0 'Clear TMR0 initially
PEIE = 1 'Enable peripheral interrupts ie internal interrupt
SSPIE = 1 'Enable synchronous serial port interupt (necessary)
'cf p 20,21,129 of datasheet 16F877
CKE = 0 'input level conform to I²C
SMP = 1 'slew rate control disabled for standard mode (<1Kz).
'WARNING: if this bit is low the SDA ligne remain low indefinitely when an 'error occur, don't put at 0

'Initiate timer1 Module interrupt
Ticks = 0
T1CKPS1 = 1 '1:8 prescale Value
T1CKPS0 = 1 '*****************
T1SYNC = 1 'Internal synchronisation
TMR1ON = 1 'Enabled timer1
TMR1IE = 1 'Enable TMR1 overflow interupt

'Initiate Serial interrupt
SPEN = 1 'serial port enable
CREN = 1 'enable continuous receive
RCIE = 1 'Enable serial port interrupt
BRGH = 1 'High speed
SYNC = 0 'Usart asynchronous mode
SPBRG = 25 'Baud Rate

GIE = 1 'Interrupt start here

__________________________________________________ _______________

Now it's the routin to eliminate the silicon bug


'__________treatment of silicon bugs or I²C protocols errors

I2CReset:
'it's to avoid the silicon bug on the MSSP module
'if by error a repeated start (SR) condition is received in an adress or data
'bit, this SR could be interpreted like a data bit. For the slave in reading 'mode, it's very problematic because it's an error but the same situation can really exist without error.
'In this case the MSSP module can block definitively the I²C bus.
'More serious is that the SDA line remain high if SMP=1 (slew rate control). The port C is changed and PORTC4 become output. The PORTC.4 is high and the SDA line remain high
'because:
'
'MASTER------------------|----------------------/\/\/\/-----------SLAVE
' | 330 +5V
' -----/\/\/\/-----------+5V
' 10K
'
'No transfert possible
' If SMP = 0 the SDA line remain low by PORTC.4!!!!and the master believe
'that all transfert are correct and all the data are &00000000!!!!!
'To avoid this problem it's necessary to control the state of P and S flag and
'to reset the MSSP by SPEN and the PORTC by TRISC if the problem occur

'******************Start of silicon debuging***************
If S=1 And P=0 Then 'detection of problem Start bit and not stop bit
I2CBUGTimerFlag = 1 ' the timer start
If I2CBUGTimer> TimeoutBug Then 'after time out
GIE = 0 'invalid all the interrupts
SSPEN= 0 'reset the MSSP module
SSPEN= 1
TRISC = %10011000 'Reset the portC for SDA and SCL
SSPIF = 0 'Reset the I²C interrupt
Register = 0 'Reset the register
GIE = 1 'Interupts ON
I2CBUGTimerFlag = 0 'Stop the timer
I2CBUGTimer = 0 'Reset the timer
EndIf
Else I2CBUGTimerFlag = 0
EndIf

'____________________end of debug
