;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.4.5
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. May 2012
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16F877, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
INDF equ 0X0000
TMR0 equ 0X0001
PCL equ 0X0002
STATUS equ 0X0003
FSR equ 0X0004
PORTA equ 0X0005
PORTB equ 0X0006
PORTC equ 0X0007
PORTD equ 0X0008
PORTE equ 0X0009
PCLATH equ 0X000A
INTCON equ 0X000B
PIR1 equ 0X000C
PIR2 equ 0X000D
TMR1L equ 0X000E
TMR1LH equ 0X000F
TMR1H equ 0X000F
T1CON equ 0X0010
TMR2 equ 0X0011
T2CON equ 0X0012
SSPBUF equ 0X0013
SSPCON equ 0X0014
CCPR1L equ 0X0015
CCPR1LH equ 0X0016
CCPR1H equ 0X0016
CCP1CON equ 0X0017
RCSTA equ 0X0018
TXREG equ 0X0019
RCREG equ 0X001A
CCPR2L equ 0X001B
CCPR2LH equ 0X001C
CCPR2H equ 0X001C
CCP2CON equ 0X001D
ADRESLH equ 0X001E
ADRESH equ 0X001E
ADCON0 equ 0X001F
OPTION_REG equ 0X0081
TRISA equ 0X0085
TRISB equ 0X0086
TRISC equ 0X0087
TRISD equ 0X0088
TRISE equ 0X0089
PIE1 equ 0X008C
PIE2 equ 0X008D
PCON equ 0X008E
SSPCON2 equ 0X0091
PR2 equ 0X0092
SSPADD equ 0X0093
SSPSTAT equ 0X0094
TXSTA equ 0X0098
SPBRG equ 0X0099
ADRESL equ 0X009E
ADCON1 equ 0X009F
EEDATL equ 0X010C
EEDATA equ 0X010C
EEDAT equ 0X010C
EEADR equ 0X010D
EEDATLH equ 0X010E
EEDATH equ 0X010E
EEADRH equ 0X010F
EECON1 equ 0X018C
EECON2 equ 0X018D
_I2C_SCL_PORT=TRISC
_I2C_SCL_PIN=3
_I2C_SDA_PORT=TRISC
_I2C_SDA_PIN=4
IRP=7
RP1=6
RP0=5
NOT_TO=4
NOT_PD=3
Z=2
DC=1
C=0
GIE=7
PEIE=6
T0IE=5
INTE=4
RBIE=3
T0IF=2
INTF=1
RBIF=0
PSPIF=7
ADIF=6
RCIF=5
PP_RCIF=5
TXIF=4
PP_TXIF=4
SSPIF=3
CCP1IF=2
TMR2IF=1
TMR1IF=0
EEIF=4
BCLIF=3
CCP2IF=0
T1CKPS1=5
T1CKPS0=4
T1OSCEN=3
NOT_T1SYNC=2
T1INSYNC=2
T1SYNC=2
TMR1CS=1
TMR1ON=0
TOUTPS3=6
TOUTPS2=5
TOUTPS1=4
TOUTPS0=3
TMR2ON=2
PP_TMR2ON=2
T2CKPS1=1
PP_T2CKPS1=1
T2CKPS0=0
PP_T2CKPS0=0
WCOL=7
SSPOV=6
SSPEN=5
CKP=4
SSPM3=3
SSPM2=2
SSPM1=1
SSPM0=0
CCP1X=5
CCP1Y=4
CCP1M3=3
CCP1M2=2
CCP1M1=1
CCP1M0=0
SPEN=7
RX9=6
RC9=6
NOT_RC8=6
RC8_9=6
SREN=5
CREN=4
PP_CREN=4
ADDEN=3
FERR=2
OERR=1
PP_OERR=1
RX9D=0
RCD8=0
CCP2X=5
CCP2Y=4
CCP2M3=3
CCP2M2=2
CCP2M1=1
CCP2M0=0
ADCS1=7
ADCS0=6
CHS2=5
CHS1=4
CHS0=3
GO=2
NOT_DONE=2
GO_DONE=2
PP_GO_DONE=2
ADON=0
NOT_RBPU=7
INTEDG=6
T0CS=5
T0SE=4
PSA=3
PS2=2
PS1=1
PS0=0
IBF=7
OBF=6
IBOV=5
PSPMODE=4
TRISE2=2
TRISE1=1
TRISE0=0
PSPIE=7
ADIE=6
RCIE=5
TXIE=4
SSPIE=3
CCP1IE=2
TMR2IE=1
TMR1IE=0
EEIE=4
BCLIE=3
CCP2IE=0
NOT_POR=1
NOT_BO=0
NOT_BOR=0
GCEN=7
ACKSTAT=6
PP_ACKSTAT=6
ACKDT=5
PP_ACKDT=5
ACKEN=4
PP_ACKEN=4
RCEN=3
PP_RCEN=3
PEN=2
PP_PEN=2
RSEN=1
PP_RSEN=1
SEN=0
PP_SEN=0
SMP=7
CKE=6
I2C_DATA=5
NOT_A=5
NOT_ADDRESS=5
D_A=5
DATA_ADDRESS=5
I2C_STOP=4
I2C_START=3
I2C_READ=2
NOT_W=2
NOT_WRITE=2
R_W=2
PP_R_W=2
READ_WRITE=2
UA=1
BF=0
PP_BF=0
CSRC=7
TX9=6
NOT_TX8=6
TX8_9=6
TXEN=5
SYNC=4
BRGH=2
TRMT=1
TX9D=0
TXD8=0
ADFM=7
PCFG3=3
PCFG2=2
PCFG1=1
PCFG0=0
EEPGD=7
PP_EEPGD=7
WRERR=3
PP_WRERR=3
WREN=2
PP_WREN=2
WR=1
PP_WR=1
RD=0
PP_RD=0
  __MAXRAM 0X1FF
  __BADRAM 0X8F-0X90, 0X95-0X97, 0X9A-0X9D
  __BADRAM 0X105, 0X107-0X109
  __BADRAM 0X185, 0X187-0X189, 0X18E-0X18F
CP_ALL equ 0X0FCF
CP_HALF equ 0X1FDF
CP_UPPER_256 equ 0X2FEF
CP_OFF equ 0X3FFF
DEBUG_ON equ 0X37FF
DEBUG_OFF equ 0X3FFF
WRTE_ON equ 0X3FFF
WRT_ENABLE_ON equ 0X3FFF
WRTE_OFF equ 0X3DFF
WRT_ENABLE_OFF equ 0X3DFF
CPD_ON equ 0X3EFF
CPD_OFF equ 0X3FFF
LVP_ON equ 0X3FFF
LVP_OFF equ 0X3F7F
BODEN_ON equ 0X3FFF
BODEN_OFF equ 0X3FBF
PWRTE_OFF equ 0X3FFF
PWRTE_ON equ 0X3FF7
WDT_ON equ 0X3FFF
WDT_OFF equ 0X3FFB
LP_OSC equ 0X3FFC
XT_OSC equ 0X3FFD
HS_OSC equ 0X3FFE
RC_OSC equ 0X3FFF
BOREN_OFF equ 0X3FBF
BOREN_ON equ 0X3FFF
FOSC_EXTRC equ 0X3FFF
FOSC_HS equ 0X3FFE
FOSC_LP equ 0X3FFC
FOSC_XT equ 0X3FFD
WDTE_OFF equ 0X3FFB
WDTE_ON equ 0X3FFF
WRT_OFF equ 0X3DFF
WRT_ON equ 0X3FFF
#define __16F877 1
#define XTAL 20
#define _CORE 14
#define _MAXRAM 368
#define _RAM_END 0X0170
#define _MAXMEM 8192
#define _ADC 8
#define _ADC_RES 10
#define _EEPROM 256
#define _PAGES 4
#define _BANKS 3
#define RAM_BANKS 4
#define _USART 1
#define _USB 0
#define _FLASH 1
#define _CWRITE_BLOCK 1
#define BANK0_START 0X20
#define BANK0_END 0X7F
#define BANK1_START 0X00A0
#define BANK1_END 0X00EF
#define BANK2_START 0X0110
#define BANK2_END 0X016F
#define BANK3_START 0X0190
#define BANK3_END 0X01EF
#define _SYSTEM_VARIABLE_COUNT 17
ram_bank = 0
CURRENT@PAGE = 0
DEST@PAGE = 0
#define LCD#DTPORT PORTD
#define LCD#DTPIN 4
#define LCD#RSPORT PORTD
#define LCD#RSPIN 2
#define LCD#ENPORT PORTD
#define LCD#ENPIN 3
#define LCD#INTERFACE 4
#define LCD#LINES 2
#define LCD#TYPE 0
f@call macro pDest
if(pDest < 1)
if((pDest & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((pDest & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
endif
else
if(pDest > $)
if((pDest & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((pDest & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
endif
else
if((pDest & 6144) == 0)
        clrf 10
else
if((pDest & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((pDest & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
endif
endif
endif
endif
        call pDest
        endm
f@jump macro pDest
if(pDest < 1)
if((pDest & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((pDest & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
endif
else
if(pDest > $)
if((pDest & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((pDest & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
endif
else
if((pDest & 6144) == 0)
        clrf 10
else
if((pDest & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((pDest & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
endif
endif
endif
endif
        goto pDest
        endm
set@page macro pDest
if((pDest & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((pDest & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
endif
        endm
s@b     macro pVarin
if((pVarin & 384) == 0)
if(ram_bank == 1)
        bcf 3,5
endif
if(ram_bank == 2)
        bcf 3,6
endif
if(ram_bank == 3)
        bcf 3,5
        bcf 3,6
endif
ram_bank = 0
endif
if((pVarin & 384) == 128)
if(ram_bank == 0)
        bsf 3,5
endif
if(ram_bank == 2)
        bsf 3,5
        bcf 3,6
endif
if(ram_bank == 3)
        bcf 3,6
endif
ram_bank = 1
endif
if((pVarin & 384) == 256)
if(ram_bank == 0)
        bsf 3,6
endif
if(ram_bank == 1)
        bcf 3,5
        bsf 3,6
endif
if(ram_bank == 3)
        bcf 3,5
endif
ram_bank = 2
endif
if((pVarin & 384) == 384)
if(ram_bank == 0)
        bsf 3,5
        bsf 3,6
endif
if(ram_bank == 1)
        bsf 3,6
endif
if(ram_bank == 2)
        bsf 3,5
endif
ram_bank = 3
endif
        endm
r@b     macro
if((ram_bank & 1) != 0)
        bcf 3,5
endif
if((ram_bank & 2) != 0)
        bcf 3,6
endif
ram_bank = 0
        endm
jump macro pLabel
    goto pLabel
    endm
wreg_byte macro pByteOut
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
wreg_bit macro pVarOut,pBitout
    s@b pVarOut
    andlw 1
    btfsc STATUS,2
    bcf pVarOut,pBitout
    btfss STATUS,2
    bsf pVarOut,pBitout
    r@b
    endm
wreg_word macro pWordOut
    s@b pWordOut
    movwf pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    r@b
    endm
wreg_dword macro pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    s@b pDwordOut
    movwf pDwordOut
    r@b
    endm
byte_wreg macro pByteIn
    s@b pByteIn
    movf pByteIn,W
    r@b
    endm
num_SFR macro pNumIn,pSFROut
    s@b pSFROut
    movlw pNumIn
    movwf pSFROut
    endm
NUM16_SFR macro pNumIn,pSFROut
    s@b pSFROut
    movlw (pNumIn & 255)
    movwf pSFROut
    s@b pSFROut + 1
    movlw ((pNumIn >> 8) & 255)
    movwf pSFROut + 1
    r@b
    endm
num_wreg macro pNumIn
    movlw (pNumIn & 255)
    endm
num_byte macro pNumIn,pByteOut
    s@b pByteOut
if(pNumIn == 0)
    clrf pByteOut
else
    movlw (pNumIn & 255)
    movwf pByteOut
endif
    r@b
    endm
num_bit macro pNumIn,pVarOut,pBitout
    s@b pVarOut
if((pNumIn & 1) == 1)
    bsf pVarOut,pBitout
else
    bcf pVarOut,pBitout
endif
    r@b
    endm
num_word macro pNumIn,pWordOut
if((pNumIn & 255) == 0)
    s@b pWordOut
    clrf pWordOut
else
    s@b pWordOut
    movlw low (pNumIn)
    movwf pWordOut
endif
if(((pNumIn >> 8) & 255) == 0)
    s@b pWordOut+1
    clrf pWordOut+1
else
    s@b pWordOut+1
    movlw high (pNumIn)
    movwf pWordOut+1
endif
    r@b
    endm
num_dword macro pNumIn,pDwordOut
if ((pNumIn >> 24 & 255) == 0)
    s@b pDwordOut+3
    clrf pDwordOut+3
else
    s@b pDwordOut+3
    movlw ((pNumIn >> 24) & 255)
    movwf pDwordOut+3
endif
if( ((pNumIn >> 16) & 255) == 0)
    s@b pDwordOut+2
    clrf pDwordOut+2
else
    s@b pDwordOut+2
    movlw ((pNumIn >> 16) & 255)
    movwf pDwordOut+2
endif
if( ((pNumIn >> 8) & 255) == 0)
    s@b pDwordOut+1
    clrf pDwordOut+1
else
    s@b pDwordOut+1
    movlw high (pNumIn)
    movwf pDwordOut+1
endif
if((pNumIn & 255) == 0)
    s@b pDwordOut
    clrf pDwordOut
else
    s@b pDwordOut
    movlw low (pNumIn)
    movwf pDwordOut
endif
    r@b
    endm
bit_wreg macro pVarin,pBitIn
    s@b pVarin
    clrw
    btfsc pVarin,pBitIn
    movlw 1
    r@b
    endm
bit_byte macro pVarin,pBitIn,pByteOut
    s@b pVarin
    clrw
    btfsc pVarin,pBitIn
    movlw 1
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
bit_bit macro pVarin,pBitIn,pVarOut,pBitout
if((pVarin & 65408) == (pVarOut & 65408))
    s@b pVarOut
    btfsc pVarin,pBitIn
    bsf pVarOut,pBitout
    btfss pVarin,pBitIn
    bcf pVarOut,pBitout
else
    s@b pVarin
    clrdc
    btfsc pVarin,pBitIn
    setdc
    s@b pVarOut
    skpndc
    bsf pVarOut,pBitout
    skpdc
    bcf pVarOut,pBitout
endif
    endm
bit_word macro pVarin,pBitIn,pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    bit_byte pVarin,pBitIn,pWordOut
    endm
bit_dword macro pVarin,pBitIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    bit_byte pVarin,pBitIn,pDwordOut
    endm
word_wreg macro pWordIn
    byte_wreg pWordIn
    endm
word_byte macro pWordIn,pByteOut
    byte_byte pWordIn,pByteOut
    endm
word_bit macro pWordIn,pVarOut,pBitout
    byte_bit pWordIn, pVarOut, pBitout
    endm
word_word macro pWordIn,pWordOut
    s@b pWordIn+1
    movf pWordIn+1,W
    s@b pWordOut+1
    movwf pWordOut+1
    byte_byte pWordIn,pWordOut
    endm
word_dword macro pWordIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    byte_byte pWordIn+1,pDwordOut+1
    byte_byte pWordIn,pDwordOut
    endm
byte_byte macro pByteIn,pByteOut
    s@b pByteIn
    movf pByteIn,W
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
byte_word macro pByteIn,pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    byte_byte pByteIn,pWordOut
    endm
byte_dword macro pByteIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    byte_byte pByteIn,pDwordOut
    endm
    byte_bit macro pByteIn,pVarOut,pBitout
if((pByteIn & 65408) == (pVarOut & 65408))
    s@b pByteIn
    btfsc pByteIn,0
    bsf pVarOut,pBitout
    btfss pByteIn,0
    bcf pVarOut,pBitout
else
    s@b pByteIn
    rrf pByteIn,W
    s@b pVarOut
    skpnc
    bsf pVarOut,pBitout
    skpc
    bcf pVarOut,pBitout
endif
    r@b
    endm
dword_wreg macro pDwordIn
    byte_wreg pDwordIn
    endm
dword_byte macro pDwordIn,pByteOut
    byte_byte pDwordIn,pByteOut
    endm
dword_word macro pDwordIn,pWordOut
    s@b pDwordIn+1
    movf pDwordIn+1,W
    s@b pWordOut+1
    movwf pWordOut+1
    byte_byte pDwordIn,pWordOut
    endm
dword_dword macro pDwordIn,pDwordOut
    byte_byte pDwordIn+3,pDwordOut+3
    byte_byte pDwordIn+2,pDwordOut+2
    byte_byte pDwordIn+1,pDwordOut+1
    byte_byte pDwordIn,pDwordOut
    endm
dword_bit macro pDwordIn,pVarOut,pBitout
    byte_bit pDwordIn,pVarOut,pBitout
    endm
variable CURRENT@PAGE = 0
variable PDESTINATION@PAGE = 0
FIND@PAGE macro pLabelIn
local CURRENT_ADDR = $
local DEST_ADDR = pLabelIn
if((CURRENT_ADDR >= 0X1800) && (CURRENT_ADDR <= 0X2000))
    CURRENT@PAGE = 3
endif
if((CURRENT_ADDR >= 0X1000) && (CURRENT_ADDR <= 0X1800))
    CURRENT@PAGE = 2
endif
if((CURRENT_ADDR >= 0X0800) && (CURRENT_ADDR <= 0X1000))
    CURRENT@PAGE = 1
endif
if((CURRENT_ADDR >= 0) && (CURRENT_ADDR <= 0X0800))
    CURRENT@PAGE = 0
endif
if((DEST_ADDR >= 0X1800) && (DEST_ADDR <= 0X2000))
    PDESTINATION@PAGE = 3
endif
if((DEST_ADDR >= 0X1000) && (DEST_ADDR <= 0X1800))
    PDESTINATION@PAGE = 2
endif
if((DEST_ADDR >= 0X0800) && (DEST_ADDR <= 0X1000))
    PDESTINATION@PAGE = 1
endif
if((DEST_ADDR >= 0) && (DEST_ADDR <= 0X0800))
    PDESTINATION@PAGE = 0
endif
    endm
num_FSR macro pNumIn
    num_byte pNumIn, FSR
if (((pNumIn >> 8) & 255) == 1)
    bsf STATUS,7
else
    bcf STATUS,7
endif
    endm
label_word macro pLabelIn,pWordOut
    movlw (pLabelIn & 255)
    s@b pWordOut
    movwf pWordOut
    movlw ((pLabelIn >> 8) & 255)
    s@b pWordOut+1
    movwf pWordOut+1
    r@b
    endm
wreg_sword macro pWordOut
    s@b pWordOut
    movwf pWordOut
    movlw 0
    btfsc pWordOut,7
    movlw 255
    s@b pWordOut+1
    movwf pWordOut+1
    r@b
    endm
wreg_sdword macro pDwordOut
    s@b pDwordOut
    movwf pDwordOut
    movlw 0
    btfsc pDwordOut,7
    movlw 255
    s@b pDwordOut+1
    movwf pDwordOut+1
    s@b pDwordOut+2
    movwf pDwordOut+2
    s@b pDwordOut+3
    movwf pDwordOut+3
    r@b
    endm
byte_sword macro pByteIn,pWordOut
    s@b pByteIn
    movf pByteIn,W
    s@b pWordOut
    movwf pWordOut
    movlw 0
    btfsc pWordOut,7
    movlw 255
    s@b pWordOut+1
    movwf pWordOut+1
    r@b
    endm
byte_sdword macro pByteIn,pDwordOut
    s@b pByteIn
    movf pByteIn,W
    s@b pDwordOut
    movwf pDwordOut
    movlw 0
    btfsc pDwordOut,7
    movlw 255
    s@b pDwordOut+1
    movwf pDwordOut+1
    s@b pDwordOut+2
    movwf pDwordOut+2
    s@b pDwordOut+3
    movwf pDwordOut+3
    r@b
    endm
word_sdword macro pWordIn,pDwordOut
    s@b pWordIn
    movf pWordIn,W
    s@b pDwordOut
    movwf pDwordOut
    s@b pWordIn+1
    movf pWordIn+1,W
    s@b pDwordOut+1
    movwf pDwordOut+1
    movlw 0
    btfsc pDwordOut+1,7
    movlw 255
    s@b pDwordOut+2
    movwf pDwordOut+2
    s@b pDwordOut+3
    movwf pDwordOut+3
    r@b
    endm
BPF = 32
BPFH = 33
CSTR#CT = 34
GEN = 35
GEN4 = 36
GEN4H = 37
PP0 = 38
PP0H = 39
PP1 = 40
PP1H = 41
PP2 = 42
PP2H = 43
PP3 = 44
PP3H = 45
PP4 = 46
PP5 = 47
SP#P9 = 48
DATACOUNT = 49
DATACOUNTH = 50
durum = 51
data_count = 52
datain = 53
dataout = 54
Reset_Count = 55
Reset_CountH = 56
PilData = 57
variable PilData#0=57,PilData#1=58,PilData#2=59,PilData#3=60
variable PilData#4=61,PilData#5=62,PilData#6=63,PilData#7=64
variable PilData#8=65,PilData#9=66,PilData#10=67,PilData#11=68
variable PilData#12=69,PilData#13=70,PilData#14=71
EpsData = 72
variable EpsData#0=72,EpsData#1=73,EpsData#2=74,EpsData#3=75
variable EpsData#4=76,EpsData#5=77,EpsData#6=78,EpsData#7=79
variable EpsData#8=80,EpsData#9=81,EpsData#10=82,EpsData#11=83
variable EpsData#12=84,EpsData#13=85,EpsData#14=86,EpsData#15=87
variable EpsData#16=88,EpsData#17=89,EpsData#18=90,EpsData#19=91
variable EpsData#20=92,EpsData#21=93,EpsData#22=94,EpsData#23=95
variable EpsData#24=96,EpsData#25=97,EpsData#26=98,EpsData#27=99
variable EpsData#28=100,EpsData#29=101,EpsData#30=102
#define __SCL_PORT PORTC
#define __SDA_PORT PORTC
#define __LCD_DTPORT PORTD
#define __LCD_RSPORT PORTD
#define __LCD_ENPORT PORTD
#define SSPIF PIR1,3
#define BF SSPSTAT,0
#define R_W SSPSTAT,2
#define D_A SSPSTAT,5
#define CKP SSPCON,4
#define SSPEN SSPCON,5
#define WCOL SSPCON,7
#define __XTAL 20
#define __SCL_PIN 3
#define __SDA_PIN 4
#define __LCD_INTERFACE 4
#define __LCD_DTPIN 4
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_LINES 2
#define __HBUS_BITRATE 100
#define st_adres 0
#define st_reset 1
#define st_eps 2
#define st_pil 3
proton#code#start
        org 0
        nop
        movlw (proton#main#start >> 8) & 255
        movwf PCLATH
        goto proton#main#start
        org 4
LCD@CLS
        movlw 128
        movwf 33
CLS
        movlw 254
        call _BYTE__SEND_
        movlw 1
        call _BYTE__SEND_
        movlw 117
        movwf 39
        movlw 48
        goto __DELAY_US_W_
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 47
        movlw 254
        call _BYTE__SEND_
        movf 47,W
        goto _BYTE__SEND_
OUT@HEX
        bcf 32,3
        movf 37,W
        skpnz
        bsf 32,3
        movlw 4
        movwf 36
        swapf 43,W
        call H@DIG
        movf 43,W
        call H@DIG
        swapf 42,W
        call H@DIG
        movf 42,W
H@DIG
        andlw 15
        addlw 246
        skpnc
        addlw 7
        addlw 10
        goto SEND@IT
OUT@DECB
        clrf 37
OUT@DECC
        movwf 42
        clrf 43
OUT@DEC
        bcf 32,3
        movf 37,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 36
        movlw 39
        movwf 41
        movlw 16
        call D@DIG
        movlw 3
        movwf 41
        movlw 232
        call D@DIG
        clrf 41
        movlw 100
        call D@DIG
        clrf 41
        movlw 10
        call D@DIG
        movf 42,W
        goto SEND@IT
D@DIG
        movwf 40
        movf 43,W
        movwf 39
        movf 42,W
        movwf 38
        call __DIVIDE_U1616_
        movf 38,W
SEND@IT
        movwf 38
        decf 36,F
        skpnz
        bcf 32,3
        movf 37,W
        skpnz
        goto $ + 4
        subwf 36,W
        skpnc
        goto EX@SEND@IT
        movf 38,W
        skpz
        bcf 32,3
        btfsc 32,3
        goto EX@SEND@IT
        addlw 48
        goto _BYTE__SEND_
EX@SEND@IT
        return
PRINT
        movwf 45
        bcf PORTD,3
        bcf PORTD,2
        bsf STATUS,5
        bcf TRISD,3
        bcf TRISD,2
        movlw 15
        andwf TRISD,F
        bcf STATUS,5
        movf 45,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 39
        movlw 128
        call __DELAY_US_W_
        movlw 51
        movwf 44
        call PR@LP
        movlw 19
        movwf 39
        movlw 136
        call __DELAY_US_W_
        call PR@LP
        movlw 100
        call __DELAY_US_
        call PR@LP
        movlw 100
        call __DELAY_US_
        movlw 34
        movwf 44
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 45,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 44
        btfss 32,0
        goto PRIT@SKP
        bcf PORTD,2
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 39
        movlw 208
        call __DELAY_US_W_
        bsf 3,0
        return
PRIT@SKP
        bsf 32,0
        sublw 254
        skpnz
        goto PR@EX
        bsf PORTD,2
PRT@S
        btfss 32,0
PR@LP
        bcf 32,0
        bsf PORTD,3
        movlw 15
        andwf PORTD,F
        movf 44,W
        andlw 240
        iorwf PORTD,F
        nop
        bcf PORTD,3
        swapf 44,F
        nop
        btfsc 32,0
        goto PR@LP
        movlw 50
        call __DELAY_US_
PR@EX
        movf 45,W
        goto I@NT
_BYTE__SEND_
        btfsc 33,7
        goto PRINT
        return
C@STROUT
        movwf 36
C@STROUTW
        clrf 34
C@STROUTLP
        movf 36,W
        bsf STATUS,6
        movwf 269
        bcf STATUS,6
        movf 37,W
        bsf STATUS,6
        movwf 271
        call __CREAD_
        skpnz
        goto I@NT
        call _BYTE__SEND_
        incf 36,F
        skpnz
        incf 37,F
        incfsz 34,F
        goto C@STROUTLP
        goto I@NT
__CREAD_
        bsf STATUS,5
        bsf STATUS,6
        bsf 396,PP_EEPGD
        bsf 396,PP_RD
        nop
        nop
        bcf STATUS,5
        movf 268,W
        goto I@NT
__DELAY_MS_
        clrf 41
__DELAY_MS_W_
        movwf 40
DLY@P
        movlw 255
        addwf 40,F
        skpc
        addwf 41,F
        skpc
        goto I@NT
        movlw 3
        movwf 39
        movlw 230
        call __DELAY_US_W_
        goto DLY@P
__DELAY_US_
        clrf 39
__DELAY_US_W_
        addlw 252
        movwf 38
        comf 39,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 38,F
        skpnc
        goto $ - 3
        addwf 38,F
        nop
        incfsz 39,F
        goto $ - 8
        return
__DIVIDE_U1616_
        clrf 43
        clrf 42
__DIVIDE_INT_U1616_
        movlw 16
        movwf 44
        rlf 39,W
        rlf 42,F
        rlf 43,F
        movf 40,W
        subwf 42,F
        movf 41,W
        skpc
        incfsz 41,W
        subwf 43,F
        skpnc
        goto $ + 8
        movf 40,W
        addwf 42,F
        movf 41,W
        skpnc
        incfsz 41,W
        addwf 43,F
        bcf 3,0
        rlf 38,F
        rlf 39,F
        decfsz 44,F
        goto $ - 21
        movf 38,W
        return
I@NT
        bcf STATUS,7
        bcf STATUS,5
        bcf STATUS,6
        return
proton#main#start
        clrf STATUS
        clrf 32
F2_SOF equ $ ; CUBESAT_I2C_DEBUGGER_SLAVE.PRP
F2_EOF equ $ ; CUBESAT_I2C_DEBUGGER_SLAVE.PRP
F1_SOF equ $ ; CUBESAT_I2C_DEBUGGER_SLAVE.BAS
F1_000007 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] ALL_DIGITAL = TRUE
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000021 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] DATACOUNT = 0
        bcf STATUS,5
ram_bank = 0
        clrf DATACOUNTH
        clrf DATACOUNT
F1_000028 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] DURUM = ST_ADRES
        clrf durum
F1_000032 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] DATA_COUNT = 0
        clrf data_count
F1_000048 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] RESET_COUNT = 0
        clrf Reset_CountH
        clrf Reset_Count
Main
F1_000051 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] MAIN: ADCON1 = 7
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000052 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] SSPADD = $38
        movlw 56
        movwf SSPADD
F1_000053 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] SSPCON2 = 0
        clrf SSPCON2
F1_000054 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] SSPCON = $36
        movlw 54
        bcf STATUS,5
ram_bank = 0
        movwf SSPCON
F1_000056 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] PRINT AT 1,1, ".....SISTEM....."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw ((STR@LB1 >> 8) & 255)
        movwf GEN4H
        movlw (STR@LB1 & 255)
        f@call C@STROUT
F1_000057 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] PRINT AT 2,1, "....ACILIYOR...."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw ((STR@LB2 >> 8) & 255)
        movwf GEN4H
        movlw (STR@LB2 & 255)
        f@call C@STROUT
F1_000058 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call __DELAY_MS_W_
F1_000059 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] PRINT AT 2,1, ".....ACILDI....."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw ((STR@LB3 >> 8) & 255)
        movwf GEN4H
        movlw (STR@LB3 & 255)
        f@call C@STROUT
F1_000060 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call __DELAY_MS_W_
F1_000061 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] CLS
        f@call LCD@CLS
Again
F1_000062 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] AGAIN:  IF SSPIF = 1 THEN GOSUB I2CSLAVE
        set@page BC@LL3
        btfss PIR1,3
        goto BC@LL3
        f@call i2cslave
BC@LL3
F1_000063 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] SSPCON.6 = 0
        bcf SSPCON,6
F1_000064 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] WCOL = 0
        bcf SSPCON,7
F1_000066 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] PRINT AT 1,1, DEC DURUM, " ", HEX RESET_COUNT," "
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movf durum,W
        f@call OUT@DECB
        movlw 32
        f@call PRINT
        clrf GEN4H
        movf Reset_CountH,W
        movwf PP2H
        movf Reset_Count,W
        movwf PP2
        f@call OUT@HEX
        movlw 32
        f@call PRINT
F1_000067 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] GOTO AGAIN
        f@jump Again
i2cslave
F1_000070 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] SSPIF = 0
        bcf PIR1,3
F1_000071 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] IF R_W = 1 THEN I2CRD
        set@page i2crd
        bsf STATUS,5
ram_bank = 1
        bcf STATUS,1
        btfsc SSPSTAT,2
        bsf STATUS,1
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,1
        goto i2crd
F1_000072 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] IF BF = 0 THEN RETURN
        set@page BC@LL7
        bsf STATUS,5
ram_bank = 1
        rrf SSPSTAT,W
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto BC@LL7
        return
BC@LL7
F1_000073 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] IF D_A = 1 THEN I2CWR
        set@page i2cwr
        bsf STATUS,5
ram_bank = 1
        bcf STATUS,1
        btfsc SSPSTAT,5
        bsf STATUS,1
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,1
        goto i2cwr
F1_000074 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] IF SSPBUF != 2 THEN RETURN
        movlw 2
        subwf SSPBUF,W
        set@page BC@LL11
        btfsc STATUS,2
        goto BC@LL11
        return
BC@LL11
F1_000075 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] RETURN
        return
i2cwr
F1_000077 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] DATAIN = SSPBUF
        movf SSPBUF,W
        movwf datain
F1_000078 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] IF DURUM = ST_RESET THEN
        movlw 1
        subwf durum,W
        set@page BC@LL13
        btfss STATUS,2
        goto BC@LL13
F1_000079 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] IF DATA_COUNT = 0 THEN
        movf data_count,F
        set@page BC@LL15
        btfss STATUS,2
        goto BC@LL15
F1_000080 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] RESET_COUNT  = SSPBUF
        clrf Reset_CountH
        movf SSPBUF,W
        movwf Reset_Count
F1_000081 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] DATA_COUNT = 0
        clrf data_count
F1_000082 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] DURUM = ST_ADRES
        clrf durum
F1_000083 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] ENDIF
BC@LL15
F1_000084 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] RETURN
        return
F1_000085 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] ENDIF
BC@LL13
F1_000090 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] IF DATAIN = 1 AND DURUM = ST_ADRES THEN DURUM = ST_RESET
        movlw 1
        subwf datain,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movlw 1
        movf durum,F
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL17
        btfsc STATUS,2
        goto BC@LL17
        movlw 1
        movwf durum
BC@LL17
F1_000091 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] PRINT AT 2,1,DEC DATACOUNT
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        clrf GEN4H
        movf DATACOUNTH,W
        movwf PP2H
        movf DATACOUNT,W
        movwf PP2
        f@call OUT@DEC
F1_000092 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] DATACOUNT = DATACOUNT + 1
        incf DATACOUNT,F
        btfsc STATUS,2
        incf DATACOUNTH,F
F1_000099 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] RETURN
        return
i2crd
F1_000102 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] I2CRD:  SSPBUF = DATAIN
        movf datain,W
        movwf SSPBUF
F1_000103 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] CKP = 1
        bsf SSPCON,4
F1_000104 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] PRINT AT 1,1, " VERI GITTI     "
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw ((STR@LB4 >> 8) & 255)
        movwf GEN4H
        movlw (STR@LB4 & 255)
        f@call C@STROUT
F1_000105 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] PRINT AT 2,1, " VERI GITTI     "
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw ((STR@LB5 >> 8) & 255)
        movwf GEN4H
        movlw (STR@LB5 & 255)
        f@call C@STROUT
F1_000106 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call __DELAY_MS_W_
F1_000107 equ $ ; IN [CUBESAT_I2C_DEBUGGER_SLAVE.BAS] RETURN
        return
F1_EOF equ $ ; CUBESAT_I2C_DEBUGGER_SLAVE.BAS
PB@LB18
        f@jump PB@LB18
STR@LB1
        de 46,46,46,46,46,83,73,83,84,69,77,46,46,46,46,46,0
STR@LB2
        de 46,46,46,46,65,67,73,76,73,89,79,82,46,46,46,46,0
STR@LB3
        de 46,46,46,46,46,65,67,73,76,68,73,46,46,46,46,46,0
STR@LB4
STR@LB5
        de 32,86,69,82,73,32,71,73,84,84,73,32,32,32,32,32,0
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&BOREN_ON&LVP_OFF&CPD_OFF&WRT_OFF&DEBUG_OFF&CP_OFF
        end
