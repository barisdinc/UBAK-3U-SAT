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
#define XTAL 8
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
#define BANK0_END 0X7B
#define BANK1_START 0X00A0
#define BANK1_END 0X00EF
#define BANK2_START 0X0110
#define BANK2_END 0X016F
#define BANK3_START 0X0190
#define BANK3_END 0X01EF
#define _SYSTEM_VARIABLE_COUNT 20
ram_bank = 0
CURRENT@PAGE = 0
DEST@PAGE = 0
#define LCD#TYPE 0
#define __INTERRUPTS_ENABLED 1
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
GEN3H = 32
GEN4 = 33
GEN4H = 34
PBP#VAR0 = 35
PBP#VAR0H = 36
PBP#VAR1 = 37
PBP#VAR1H = 38
PBP#VAR2 = 39
PP0 = 40
PP0H = 41
PP1 = 42
PP1H = 43
PP3 = 44
PP3H = 45
PP6 = 46
PP6H = 47
PP7 = 48
PP7H = 49
PP8 = 50
PP8H = 51
FSRSAVE = 124
PSAVE = 125
SSAVE = 126
WSAVE = 127
last_ERR = 52
data_count = 53
datain = 54
dataout = 55
datacnt = 56
DTMF = 57
KOMUT = 58
variable KOMUT#0=58,KOMUT#1=59,KOMUT#2=60,KOMUT#3=61
variable KOMUT#4=62,KOMUT#5=63,KOMUT#6=64,KOMUT#7=65
lastKOMUT = 66
variable lastKOMUT#0=66,lastKOMUT#1=67,lastKOMUT#2=68,lastKOMUT#3=69
variable lastKOMUT#4=70,lastKOMUT#5=71,lastKOMUT#6=72,lastKOMUT#7=73
DTMFcount = 74
CEVAP = 75
variable CEVAP#0=75,CEVAP#1=76,CEVAP#2=77,CEVAP#3=78
variable CEVAP#4=79,CEVAP#5=80,CEVAP#6=81,CEVAP#7=82
variable CEVAP#8=83,CEVAP#9=84
CEVAPlen = 85
CEVAPpos = 86
BATARYA = 87
variable BATARYA#0=87,BATARYA#1=88
CSUM = 89
sayac = 90
#define LED PORTA,1
#define PS0 OPTION_REG,0
#define PS1 OPTION_REG,1
#define PS2 OPTION_REG,2
#define PSA OPTION_REG,3
#define INTEDG OPTION_REG,6
#define NOT_RBPU OPTION_REG,7
#define BF SSPSTAT,0
#define UA SSPSTAT,1
#define R_W SSPSTAT,2
#define _S SSPSTAT,3
#define _P SSPSTAT,4
#define D_A SSPSTAT,5
#define CKE SSPSTAT,6
#define SMP SSPSTAT,7
#define CKP SSPCON,4
#define SSPEN SSPCON,5
#define SSPOV SSPCON,6
#define WCOL SSPCON,7
#define RBIF INTCON,0
#define INT0IF INTCON,1
#define TMR0IF INTCON,2
#define RBIE INTCON,3
#define INT0IE INTCON,4
#define TMR0IE INTCON,5
#define PEIE INTCON,6
#define GIE INTCON,7
#define TMR1IE PIE1,0
#define TMR2IE PIE1,1
#define CCP1IE PIE1,2
#define SSPIE PIE1,3
#define TXIE PIE1,4
#define RCIE PIE1,5
#define ADIE PIE1,6
#define TMR1IF PIR1,0
#define TMR2IF PIR1,1
#define CCP1IF PIR1,2
#define SSPIF PIR1,3
#define TXIF PIR1,4
#define RCIF PIR1,5
#define ADIF PIR1,6
#define ADON ADCON0,0
#define NOT_DONE ADCON0,2
#define GO_DONE ADCON0,2
#define CHS0 ADCON0,3
#define CHS1 ADCON0,4
#define CHS2 ADCON0,5
#define ADCS0 ADCON0,6
#define ADCS1 ADCON0,7
#define __XTAL 8
#define I2CADDR 50
#define err_YOK 0
#define err_DEVAM 1
#define err_UZUN 2
#define err_KISA 3
#define err_CSUM 4
#define KOMUTlen 6
proton#code#start
        org 0
        nop
        movlw (proton#main#start >> 8) & 255
        movwf PCLATH
        goto proton#main#start
        org 4
        movwf WSAVE
        movf STATUS,W
        clrf STATUS
        movwf SSAVE
        movf PCLATH,W
        movwf PSAVE
        movlw (myinterrupt >> 8) & 255
        movwf PCLATH
        goto myinterrupt
__DELAY_MS_
        clrf 43
__DELAY_MS_W_
        movwf 42
DLY@P
        movlw 255
        addwf 42,F
        skpc
        addwf 43,F
        skpc
        goto I@NT
        movlw 3
        movwf 41
        movlw 227
        call __DELAY_US_W_
        goto DLY@P
__DELAY_US_
        clrf 41
__DELAY_US_W_
        addlw 244
        movwf 40
        comf 41,F
        movlw 254
        skpc
        goto $ + 4
        addwf 40,F
        skpnc
        goto $ - 2
        addwf 40,F
        nop
        incfsz 41,F
        goto $ - 6
        nop
        btfsc 40,0
        goto $ + 1
        btfsc 40,0
        goto $ + 1
        return
I@NT
        bcf STATUS,7
        bcf STATUS,5
        bcf STATUS,6
        return
proton#main#start
        clrf STATUS
F2_SOF equ $ ; DTMF_877.PRP
F2_EOF equ $ ; DTMF_877.PRP
F1_SOF equ $ ; DTMF_877.BAS
F1_000033 equ $ ; IN [DTMF_877.BAS] ALL_DIGITAL TRUE
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000054 equ $ ; IN [DTMF_877.BAS] LAST_ERR = ERR_YOK
        bcf STATUS,5
ram_bank = 0
        clrf last_ERR
F1_000058 equ $ ; IN [DTMF_877.BAS] DATA_COUNT = 0
        clrf data_count
F1_000069 equ $ ; IN [DTMF_877.BAS] INTEDG = 0
        bsf STATUS,5
ram_bank = 1
        bcf OPTION_REG,6
F1_000070 equ $ ; IN [DTMF_877.BAS] PSA = 0
        bcf OPTION_REG,3
F1_000097 equ $ ; IN [DTMF_877.BAS] INTCON = %11010000
        movlw 208
        movwf INTCON
F1_000107 equ $ ; IN [DTMF_877.BAS] PIE1 = %0001000
        movlw 8
        movwf PIE1
F1_000117 equ $ ; IN [DTMF_877.BAS] PIR1 = 0
        bcf STATUS,5
ram_bank = 0
        clrf PIR1
F1_000129 equ $ ; IN [DTMF_877.BAS] ADCON0 = %11000001
        movlw 193
        movwf ADCON0
F1_000130 equ $ ; IN [DTMF_877.BAS] ADCON1 = %10000010
        movlw 130
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000131 equ $ ; IN [DTMF_877.BAS] ADIF = 0
        bcf STATUS,5
ram_bank = 0
        bcf PIR1,6
F1_000132 equ $ ; IN [DTMF_877.BAS] ADIE = 1
        bsf STATUS,5
ram_bank = 1
        bsf PIE1,6
F1_000133 equ $ ; IN [DTMF_877.BAS] PEIE = 1
        bsf INTCON,6
F1_000135 equ $ ; IN [DTMF_877.BAS] SSPADD = I2CADDR
        movlw 50
        movwf SSPADD
F1_000136 equ $ ; IN [DTMF_877.BAS] SSPCON = $36
        movlw 54
        bcf STATUS,5
ram_bank = 0
        movwf SSPCON
F1_000139 equ $ ; IN [DTMF_877.BAS] PEIE = 1
        bsf INTCON,6
F1_000140 equ $ ; IN [DTMF_877.BAS] GIE  = 1
        bsf INTCON,7
F1_000149 equ $ ; IN [DTMF_877.BAS] KOMUT = 11,1,1,1,1,4,12
        movlw 11
        movwf KOMUT#0
        movlw 1
        movwf KOMUT#1
        movwf KOMUT#2
        movwf KOMUT#3
        movwf KOMUT#4
        movlw 4
        movwf KOMUT#5
        movlw 12
        movwf KOMUT#6
F1_000152 equ $ ; IN [DTMF_877.BAS] LASTKOMUT = KOMUT
        clrf PP7
PB@LB2
        movf PP7,W
        addlw KOMUT
        movwf FSR
        movf INDF,W
        movwf PP0H
        movf PP7,W
        addlw lastKOMUT
        movwf FSR
        movf PP0H,W
        movwf INDF
        incf PP7,F
        movf PP7,W
        sublw 8
        set@page PB@LB2
        btfss STATUS,2
        goto PB@LB2
F1_000163 equ $ ; IN [DTMF_877.BAS] GOTO BASLA
        f@jump Basla
myinterrupt
ram_bank = 0
F1_000165 equ $ ; IN [DTMF_877.BAS] CONTEXT SAVE
ram_bank = 0
F1_000166 equ $ ; IN [DTMF_877.BAS] GIE = 0
        bcf INTCON,7
F1_000167 equ $ ; IN [DTMF_877.BAS] IF SSPIF  = 1 THEN
        set@page BC@LL4
        btfss PIR1,3
        goto BC@LL4
F1_000168 equ $ ; IN [DTMF_877.BAS] GOSUB I2CSLAVE
        f@call i2cslave
F1_000169 equ $ ; IN [DTMF_877.BAS] SSPIF = 0
        bcf PIR1,3
F1_000170 equ $ ; IN [DTMF_877.BAS] ENDIF
BC@LL4
F1_000171 equ $ ; IN [DTMF_877.BAS] IF INT0IF = 1 THEN GOSUB RB0INT
        set@page BC@LL6
        btfss INTCON,1
        goto BC@LL6
        f@call RB0int
BC@LL6
F1_000172 equ $ ; IN [DTMF_877.BAS] IF ADIF   = 1 THEN GOSUB ADCONREADY
        set@page BC@LL8
        btfss PIR1,6
        goto BC@LL8
        f@call ADCONready
BC@LL8
F1_000173 equ $ ; IN [DTMF_877.BAS] GIE = 1
        bsf INTCON,7
F1_000174 equ $ ; IN [DTMF_877.BAS] CONTEXT RESTORE
        movf PSAVE,W
        movwf PCLATH
        movf SSAVE,W
        movwf STATUS
        swapf WSAVE,F
        swapf WSAVE,W
        retfie
ADCONready
F1_000177 equ $ ; IN [DTMF_877.BAS] ADIF = 0
        bcf PIR1,6
F1_000178 equ $ ; IN [DTMF_877.BAS] BATARYA[0] = ADRESH
        movf ADRESH,W
        movwf BATARYA#0
F1_000179 equ $ ; IN [DTMF_877.BAS] BATARYA[1] = ADRESL
        bsf STATUS,5
ram_bank = 1
        movf ADRESL,W
        bcf STATUS,5
ram_bank = 0
        movwf BATARYA#1
F1_000180 equ $ ; IN [DTMF_877.BAS] IF (BATARYA[0] * 256 + BATARYA[1]) > 500 THEN
        movf BATARYA#0,W
        movwf PBP#VAR1
        movf PBP#VAR1,W
        movwf PP7H
        clrf PP7
        movf BATARYA#1,W
        movwf PBP#VAR2
        movf PBP#VAR2,W
        addwf PP7,W
        movwf PBP#VAR0
        movf PP7H,W
        btfsc STATUS,0
        addlw 1
        movwf PBP#VAR0H
        movlw 1
        subwf PBP#VAR0H,W
        set@page BC@LL10
        btfss STATUS,0
        goto BC@LL10
        set@page CP@LB2
        btfss STATUS,2
        goto CP@LB2
        movlw 245
        subwf PBP#VAR0,W
        set@page BC@LL10
        btfss STATUS,0
        goto BC@LL10
CP@LB2
ram_bank = 255
F1_000181 equ $ ; IN [DTMF_877.BAS] HIGH PORTA.2
ram_bank = 1
        bcf TRISA,2
        bcf STATUS,5
ram_bank = 0
        bsf PORTA,2
        f@jump BC@LL11
BC@LL10
F1_000182 equ $ ; IN [DTMF_877.BAS] ELSE
F1_000183 equ $ ; IN [DTMF_877.BAS] LOW PORTA.2
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,2
        bcf STATUS,5
ram_bank = 0
        bcf PORTA,2
F1_000184 equ $ ; IN [DTMF_877.BAS] ENDIF
BC@LL11
F1_000185 equ $ ; IN [DTMF_877.BAS] RETURN
        return
RB0int
F1_000189 equ $ ; IN [DTMF_877.BAS] INT0IF = 0
        bcf INTCON,1
F1_000190 equ $ ; IN [DTMF_877.BAS] DTMF = (PORTB.6 * 8) + (PORTB.5 * 4) + (PORTB.2 * 2) + PORTB.3
        movlw 0
        btfsc PORTB,6
        movlw 1
        clrf PP7H
        movwf PP7
        movlw 3
        movwf PP0
M@LB2
        bcf STATUS,0
        rlf PP7,F
        rlf PP7H,F
        decf PP0,F
        set@page M@LB2
        btfss STATUS,2
        goto M@LB2
        movlw 0
        btfsc PORTB,5
        movlw 1
        clrf PP8H
        movwf PP8
        rlf PP8,F
        rlf PP8H,F
        rlf PP8,F
        rlf PP8H,F
        movlw 252
        andwf PP8,F
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movlw 0
        btfsc PORTB,2
        movlw 1
        clrf PP8H
        movwf PP8
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf PP7,W
        btfsc PORTB,3
        addlw 1
        movwf DTMF
F1_000191 equ $ ; IN [DTMF_877.BAS] IF DTMF = 11 THEN
        movlw 11
        subwf DTMF,W
        set@page BC@LL13
        btfss STATUS,2
        goto BC@LL13
F1_000192 equ $ ; IN [DTMF_877.BAS] LAST_ERR  = ERR_DEVAM
        movlw 1
        movwf last_ERR
F1_000193 equ $ ; IN [DTMF_877.BAS] DTMFCOUNT = 0
        clrf DTMFcount
        f@jump BC@LL14
BC@LL13
F1_000194 equ $ ; IN [DTMF_877.BAS] ELSE
F1_000195 equ $ ; IN [DTMF_877.BAS] DTMFCOUNT = DTMFCOUNT + 1
        incf DTMFcount,F
F1_000196 equ $ ; IN [DTMF_877.BAS] ENDIF
BC@LL14
F1_000197 equ $ ; IN [DTMF_877.BAS] TOGGLE LED
        movlw 2
        xorwf PORTA,F
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,1
F1_000198 equ $ ; IN [DTMF_877.BAS] KOMUT[DTMFCOUNT] = DTMF
        bcf STATUS,5
ram_bank = 0
        movf DTMFcount,W
        addlw KOMUT
        movwf FSR
        movf DTMF,W
        movwf INDF
F1_000199 equ $ ; IN [DTMF_877.BAS] IF DTMF = 12 THEN
        movlw 12
        subwf DTMF,W
        set@page BC@LL16
        btfss STATUS,2
        goto BC@LL16
F1_000200 equ $ ; IN [DTMF_877.BAS] LAST_ERR = ERR_YOK
        clrf last_ERR
F1_000201 equ $ ; IN [DTMF_877.BAS] IF DTMFCOUNT = KOMUTLEN THEN
        movlw 6
        subwf DTMFcount,W
        set@page BC@LL18
        btfss STATUS,2
        goto BC@LL18
F1_000203 equ $ ; IN [DTMF_877.BAS] CSUM = 0
        clrf CSUM
F1_000205 equ $ ; IN [DTMF_877.BAS] FOR SAYAC = 1 TO KOMUTLEN - 2
        movlw 1
        movwf sayac
FR@LB19
        movlw 5
        subwf sayac,W
        set@page NX@LB20
        btfsc STATUS,0
        goto NX@LB20
F1_000206 equ $ ; IN [DTMF_877.BAS] CSUM = CSUM + KOMUT[SAYAC]
        movf sayac,W
        addlw KOMUT
        movwf FSR
        movf INDF,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        addwf CSUM,F
CT@LB21
F1_000207 equ $ ; IN [DTMF_877.BAS] NEXT SAYAC
        movlw 1
        addwf sayac,F
        set@page FR@LB19
        btfss STATUS,0
        goto FR@LB19
NX@LB20
F1_000208 equ $ ; IN [DTMF_877.BAS] IF KOMUT[5] = (CSUM & $0F) THEN
        movf KOMUT#5,W
        movwf PBP#VAR0
        movlw 15
        andwf CSUM,W
        clrf PBP#VAR1H
        movwf PBP#VAR1
        movf PBP#VAR1H,F
        set@page BC@LL23
        btfss STATUS,2
        goto BC@LL23
        movf PBP#VAR1,W
        subwf PBP#VAR0,W
        set@page BC@LL23
        btfss STATUS,2
        goto BC@LL23
F1_000209 equ $ ; IN [DTMF_877.BAS] LASTKOMUT = KOMUT
        clrf PP7
PB@LB24
        movf PP7,W
        addlw KOMUT
        movwf FSR
        movf INDF,W
        movwf PP0H
        movf PP7,W
        addlw lastKOMUT
        movwf FSR
        movf PP0H,W
        movwf INDF
        incf PP7,F
        movf PP7,W
        sublw 8
        set@page PB@LB24
        btfss STATUS,2
        goto PB@LB24
        f@jump BC@LL25
BC@LL23
F1_000210 equ $ ; IN [DTMF_877.BAS] ELSE
F1_000211 equ $ ; IN [DTMF_877.BAS] LAST_ERR = ERR_CSUM
        movlw 4
        movwf last_ERR
F1_000212 equ $ ; IN [DTMF_877.BAS] ENDIF
BC@LL25
F1_000213 equ $ ; IN [DTMF_877.BAS] ENDIF
BC@LL18
F1_000214 equ $ ; IN [DTMF_877.BAS] IF DTMFCOUNT < (KOMUTLEN - 1) THEN  LAST_ERR = ERR_KISA
        movlw 5
        subwf DTMFcount,W
        set@page BC@LL27
        btfsc STATUS,0
        goto BC@LL27
        movlw 3
        movwf last_ERR
BC@LL27
F1_000215 equ $ ; IN [DTMF_877.BAS] IF DTMFCOUNT > (KOMUTLEN + 1) THEN  LAST_ERR = ERR_UZUN
        movlw 8
        subwf DTMFcount,W
        set@page BC@LL29
        btfss STATUS,0
        goto BC@LL29
        movlw 2
        movwf last_ERR
BC@LL29
F1_000216 equ $ ; IN [DTMF_877.BAS] ENDIF
BC@LL16
F1_000217 equ $ ; IN [DTMF_877.BAS] IF DTMFCOUNT > KOMUTLEN THEN
        movlw 7
        subwf DTMFcount,W
        set@page BC@LL31
        btfss STATUS,0
        goto BC@LL31
F1_000218 equ $ ; IN [DTMF_877.BAS] DTMFCOUNT = 0
        clrf DTMFcount
F1_000219 equ $ ; IN [DTMF_877.BAS] LAST_ERR = ERR_UZUN
        movlw 2
        movwf last_ERR
F1_000220 equ $ ; IN [DTMF_877.BAS] ENDIF
BC@LL31
F1_000221 equ $ ; IN [DTMF_877.BAS] RETURN
        return
i2cslave
F1_000228 equ $ ; IN [DTMF_877.BAS] IF R_W = 0 THEN
        set@page BC@LL33
        bsf STATUS,5
ram_bank = 1
        bcf STATUS,1
        btfsc SSPSTAT,2
        bsf STATUS,1
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,1
        goto BC@LL33
F1_000229 equ $ ; IN [DTMF_877.BAS] IF D_A = 0 THEN
        set@page BC@LL35
        bsf STATUS,5
ram_bank = 1
        bcf STATUS,1
        btfsc SSPSTAT,5
        bsf STATUS,1
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,1
        goto BC@LL35
F1_000230 equ $ ; IN [DTMF_877.BAS] BF = 0
        bsf STATUS,5
ram_bank = 1
        bcf SSPSTAT,0
F1_000231 equ $ ; IN [DTMF_877.BAS] CKP = 1
        bcf STATUS,5
ram_bank = 0
        bsf SSPCON,4
F1_000232 equ $ ; IN [DTMF_877.BAS] IF SSPBUF != I2CADDR THEN RETURN
        movlw 50
        subwf SSPBUF,W
        set@page BC@LL37
        btfsc STATUS,2
        goto BC@LL37
        return
BC@LL37
        f@jump BC@LL38
BC@LL35
F1_000233 equ $ ; IN [DTMF_877.BAS] ELSE
F1_000234 equ $ ; IN [DTMF_877.BAS] DATAIN = SSPBUF
        movf SSPBUF,W
        movwf datain
F1_000236 equ $ ; IN [DTMF_877.BAS] ENDIF
BC@LL38
        f@jump BC@LL39
BC@LL33
F1_000237 equ $ ; IN [DTMF_877.BAS] ELSE
F1_000238 equ $ ; IN [DTMF_877.BAS] IF D_A = 0 THEN
        set@page BC@LL41
        bsf STATUS,5
ram_bank = 1
        bcf STATUS,1
        btfsc SSPSTAT,5
        bsf STATUS,1
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,1
        goto BC@LL41
F1_000242 equ $ ; IN [DTMF_877.BAS] CKP = 1
        bsf SSPCON,4
F1_000244 equ $ ; IN [DTMF_877.BAS] DATAIN = SSPBUF
        movf SSPBUF,W
        movwf datain
        f@jump BC@LL42
BC@LL41
F1_000246 equ $ ; IN [DTMF_877.BAS] ELSE
F1_000247 equ $ ; IN [DTMF_877.BAS] SSPBUF = $44
        movlw 68
        movwf SSPBUF
F1_000248 equ $ ; IN [DTMF_877.BAS] CKP = 1
        bsf SSPCON,4
F1_000250 equ $ ; IN [DTMF_877.BAS] ENDIF
BC@LL42
F1_000252 equ $ ; IN [DTMF_877.BAS] ENDIF
BC@LL39
F1_000254 equ $ ; IN [DTMF_877.BAS] RETURN
        return
i2cwr
F1_000257 equ $ ; IN [DTMF_877.BAS] DATAIN = SSPBUF
        movf SSPBUF,W
        movwf datain
F1_000258 equ $ ; IN [DTMF_877.BAS] SSPOV = 0
        bcf SSPCON,6
F1_000276 equ $ ; IN [DTMF_877.BAS] RETURN
        return
i2crd
F1_000280 equ $ ; IN [DTMF_877.BAS] SSPBUF = $36
        movlw 54
        movwf SSPBUF
F1_000286 equ $ ; IN [DTMF_877.BAS] RETURN
        return
Basla
F1_000290 equ $ ; IN [DTMF_877.BAS] DELAYMS 100
        movlw 100
        f@call __DELAY_MS_
F1_000291 equ $ ; IN [DTMF_877.BAS] HIGH PORTA.4
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,4
        bcf STATUS,5
ram_bank = 0
        bsf PORTA,4
F1_000292 equ $ ; IN [DTMF_877.BAS] GO_DONE = 1
        bsf ADCON0,2
Dongu
F1_000296 equ $ ; IN [DTMF_877.BAS] GOTO DONGU
        f@jump Dongu
F1_000301 equ $ ; IN [DTMF_877.BAS] END
PB@LB43
        f@jump PB@LB43
F1_EOF equ $ ; DTMF_877.BAS
PB@LB44
        f@jump PB@LB44
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&BOREN_ON&LVP_OFF&CPD_OFF&WRT_OFF&DEBUG_OFF&CP_OFF
        end
