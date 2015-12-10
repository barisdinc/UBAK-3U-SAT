Device = 16F877
'Config FOSC_HS, WDTE_OFF, PWRTE_OFF, BOREN_ON, LVP_OFF, CPD_OFF, WRT_OFF, DEBUG_OFF, CP_OFF

Xtal=4 'dikkat gercek ortamda 20 yap
All_Digital = True

Declare LCD_Interface = 4
Declare LCD_DTPin = PORTD.4
Declare LCD_RSPin = PORTD.2 'RS pin del LCD
Declare LCD_ENPin = PORTD.3 'EN pin del LCD
Declare LCD_Lines = 2 '2 lines LCD
'Declare BUS_SCL On 
'Declare Slow_Bus On
Declare Hbus_Bitrate 100

TRISC.3 = 1
TRISC.4 = 1

'Declare SDA_Pin PORTC.4
'Declare SCL_Pin PORTC.3


Dim Loop As Byte
Dim Array[10] As Byte
Dim datain As Byte

BASLA:

Array[0] = 0
Array[1] = 0
Array[2] = 0
Array[3] = 0
Array[4] = 0
Array[5] = 0
Array[6] = 0

I2COut PORTC.4,PORTC.3, $32, [1]
DelayMS 1000
I2CIn  PORTC.4,PORTC.3, $33, [Array[0],Array[1]]
'Array[0] = Array[0] & %01111111
'Array[1] = Array[1] & %01111111
DelayMS 1000
Print At 2,1, "1:",Hex Array[0]," ",Hex Array[1],"        -"

I2COut PORTC.4,PORTC.3, $32, [2]
DelayMS 1000
I2CIn  PORTC.4,PORTC.3, $33, [Array[0],Array[1]]
'Array[0] = Array[0] & %01111111
'Array[1] = Array[1] & %01111111
DelayMS 1000
Print At 2,1, "2:",Hex Array[0]," ",Hex Array[1],"        -"



GoTo BASLA

End
