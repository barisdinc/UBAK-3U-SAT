                                                             '****************************************************************
'*  Name    : DORJI COMMS                                       *
'*  Author  : Baris DINC                                        *
'*  Notice  : Copyright (c) 2013 Ankara - 2013                  *
'*          : All Rights Reserved                               *
'*  Date    : 24.07.2013                                        *
'*  Version : 1.0                                               *
'*  Notes   : Addr variable contains node address               *
'*          :                                                   *
'****************************************************************

                              
Device 18F4520
Config_Start
OSC = HS
FCMEN = OFF
IESO = OFF
PWRT = On
BOREN = On
BORV = 2
WDT = On
WDTPS = 128
MCLRE = On
LPT1OSC = OFF
PBADEN = OFF
CCP2MX = PORTC
STVREN = On
LVP = OFF
XINST = OFF
Debug = OFF
CP0 = OFF
CP1 = OFF
CP2 = OFF
CP3 = OFF
CPB = OFF
CPD = OFF
WRT0 = OFF
WRT1 = OFF
WRT2 = OFF
WRT3 = OFF
WRTB = OFF
WRTC = OFF
WRTD = OFF
EBTR0 = OFF
EBTR1 = OFF
EBTR2 = OFF
EBTR3 = OFF
EBTRB = OFF
Config_End

Declare Reminders off
Declare Optimiser_Level 0
Declare Xtal 11.0592
Declare Reminders On
Declare Watchdog On
Declare Bootloader off

Declare Hserial_Baud 9600
Declare Hserial_RCSTA %10010000
Declare Hserial_TXSTA %10101100
Declare Hserial_Clear On
'declare hserial_parity none

'declare hserial_spbrg 77 '20 mhz icin



' -----[ Variables ]---------------------------------------------------------------------
Dim TMR1value As TMR1L.Word
Symbol TMR1_Preload = ((65536)-(Xtal * 1250)) + 7

' -----[ Initialization ]----------------------------------------------------------------
Clear
'PORTA = %0000000 ' pull PORTA low
TRISA = %0100000 ' set PORTA bit 5 to input, all others to output

ADCON0 = %010001 ' select ADC channel AN4
ADCON1 = %001010 ' set AN0 & AN4 to analog
ADCON2.7 = 1 ' right justify analog results

'PORTB = %00000000 ' pull PORTB low
TRISB = %11110000 ' set PORTB bits 0-3 to output, all others to input

'PORTC = %00000000 ' pull PORTC Low
TRISC = %10010000 ' set PORTC bits 4 & 7 to input, all others to output

'PORTD = %00000000 ' preset chip select signals
TRISD = %00001000 ' set PORTD to output

'PORTE = %010 ' set pwrKill bit high
TRISE = %100 ' set PORTE bit 2 to input, all others to output

INTCON2.7 = 0 ' enable PORTB pullups
Low PORTB.1 ' LCD R/W line low (W)

' -----[ We start Here ]-------------------------------------------------------------
Start:
TMR1value = TMR1_Preload ' LOAD THE TIMERS FOR 100HZ INTERRUPTS
T1CON = %00000000 ' SET UP TMR1 TO HAVE 1:1 PRESCALER AND ACT AS A TIMER
PIR1.0 = 0 ' CLEAR TMR1 INTERRUPT FLAG
PIE1.0 = 1 ' ENABLE TMR1 AS PERIPHERAL INTERRUPT SOURCE
PIE1.5 = 1   'enable uart receive interrupt
IPR1.5 = 1   'uart priority
T1CON.0 = 1 ' TURN ON TMR1
INTCON = %11000000 ' GLOBAL AND PERIPHERAL INTERRUPTS ON

Dim RXdata[20] As Byte   'Receive Data Buffer
Dim RXbyte     As Byte   'Received Byte
Dim RXcnt      As Byte   'Receive Data Count
Dim RXend      As Byte   'Receive End Char Received  RXend = 1 , RXend = 0
Dim Addr       As Byte   'Address
Dim Cmd        As Byte   'Command

Dim TXdata[20] As Byte  'Transmit Data Buffer
Dim TXcnt      As Byte  'Transmit data count

Dim BattLevel  As Byte    'Battery Level
Dim Sense      As Byte    'Sensitivity Level
Dim Time       As Dword   'Time Counter

Dim CRC        As Bit     'CRC check bit
Dim calcCRC    As Word
Dim bitcount   As Byte
Dim bytecount  As Byte

RXcnt = 0
RXend = 0
CRC   = 0
BattLevel = 61
Sense     = 45
Time      = 66987

Symbol NodeAddr = 66    'Node address  (# and 13 cannot be node addresses, the two LSB bits are group ID, 0 is broad cast)
                        ' addr = %00000000   broadcast all              (0)
                        ' addr = %01000000   broadcast to group 1       (64)
                        ' addr = %11000000   broadcast to group 3       (192)
                        ' addr = %01000001   message to group 1 node 1  (65)
                        ' addr = %01000010   message to group 1 node 2  (66)
Symbol NodeGrp = NodeAddr & %11000000                        
                        

Dim loopCount As Byte


On_Interrupt GoTo inthandler
GoTo Init



' -----[ Interrupt Handler ]-------------------------------------------------------------
inthandler:
    Context Save
    TMR1value = TMR1value + 10000 'TMR1_Preload ' RELOAD LOAD TMR1
    'Toggle PORTC.0
    If PIR1.0 = 1 Then 
        Toggle PORTB.6
        Clear PIR1.0 ' Clear the interrupt flag
    EndIf
    
    If PIR1.4 = 1 Then
        Toggle PORTB.4
        Clear PIE1.4
        Clear PIR1.4  ' Clear the interrupt flag
    EndIf
    
    If PIR1.5 = 1 Then
        Toggle PORTB.5
        RXbyte = RCREG
        If RXbyte = 13 And RXdata[0] = "#" Then RXend = 1  'end char (13) received
        If RXbyte = "#" Then RXcnt = 0  'start char (#) received, start counting data
        RXdata[RXcnt] = RXbyte 'bunu usteekinden alabiliriz
        RXcnt = RXcnt + 1 'increase receive counter
        Set PIE1.4
        Clear PIR1.5  ' Clear the interrupt flag  
    EndIf
    
    Context Restore





' -----[ Main Code ]---------------------------------------------------------------------
Init:
    DelayMS 100
    High PORTD.2    
    'telsizi enable et
    High PORTD.3    'settings disabled
    High PORTD.4    'chip enabled
    'MUX'dan telsiz kanalini sec A= 1 B= 1
    High PORTB.2 'A
    Low  PORTB.1 'B
    
     
    
HSerOut [" Node On :",NodeAddr,13,10]
DelayMS 100

Main:
    Clrwdt
    'TXREG = mydata[0]
    If RXend = 1 Then GoTo DecodeData
    GoTo Main ' do it forever





DecodeData:
    TXdata = RXdata
    For loopCount = 0 To RXcnt - 1
        HSerOut [RXdata[loopCount]]
    Next loopCount

    RXend = 0 'Clear data received flag
    If RXdata[0] != "#" Then GoTo Main     'Is it a message packet, if not go back to main and wait for another message packet
    RXdata[0]=0                            'We are sur ethat it is a command message so we can clear the first byte not to use it again in next loop
    GoSub CrcCheck                         'Is CRC ok ?
    If CRC != 1 Then GoTo Main             'Received data is garbage go back to main
    Addr = RXdata[1]                       'Second byte is target address
    If Addr = 0 Then GoTo GlobalBroadcast                                                               'This message is a broadcast for all
    If Addr = NodeAddr Then GoTo PrivateMessage                                                         'This message is for us
    If (Addr & %00111111) = 0 Then
        If (Addr & %11000000) = NodeGrp Then GoTo GroupBroadcast                                        'This message is a broadcast for our group
    EndIf
    GoTo Main                                                                                           'This message is not for us
    
GlobalBroadcast:
    HSerOut ["Global Broadcast...",13]
    GoTo DecodeCmd
PrivateMessage:
    HSerOut ["Private Message...",13]
    GoTo DecodeCmd
GroupBroadcast:
    HSerOut ["Group Broadcast...",13]
    GoTo DecodeCmd

DecodeCmd:    
    HSerOut ["DecCmd "]
    Cmd = RXdata[2]     'third byte is our command
    'Commands
    'B: Battery Report
    'H: Health Check
    'F: Fake Alarm
    'S: Set Sensitivity
    'T: Set Time
    If Cmd = "B" Then HSerOut ["Battery"]
    If Cmd = "H" Then HSerOut ["Saglik soruldu :"]
    If Cmd = "F" Then HSerOut ["Fake Alarm Istendi :"]
    If Cmd = "S" Then HSerOut ["Set Sensitivity :"]
    If Cmd = "T" Then HSerOut ["Time Set :"]
'    For loopCount = 1 To RXcnt - 1
'        HSerOut [RXdata[loopCount]]
'    Next loopCount
    TXcnt= RXcnt 
    RXcnt = 0 'clear data count
    GoSub CalcTxCRC
    HSerOut [Hex calcCRC]
    GoTo Main





CrcCheck:
    'son iki byte ile crc check yapilacak
    CRC = 0 'Assume CRC is not valid in entrance
    
    'TODO: write a CRC check algorithm here !!!
    HSerOut ["CRC OK...",13,10]
    CRC = 1 'CRC is OK
    Return



CalcTxCRC:    
        calcCRC = $FFFF
        For bytecount = 0 To TXcnt-2 'omit carriage return
          calcCRC = calcCRC ^ TXdata[bytecount]
          For bitcount=1 To 8
            If calcCRC.0 = 1 Then                
              calcCRC = $A001 ^ (calcCRC >> 1)
            Else
              calcCRC = calcCRC >> 1
            EndIf
          Next bitcount
        Next bytecount
        Return









End
