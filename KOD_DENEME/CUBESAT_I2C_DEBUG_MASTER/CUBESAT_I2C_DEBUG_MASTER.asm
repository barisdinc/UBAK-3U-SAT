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
#define _SYSTEM_VARIABLE_COUNT 50
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
GEN2 = 36
GEN2H = 37
GEN4 = 38
GEN4H = 39
GENH = 40
GPR = 41
PBP#VAR0 = 42
PBP#VAR1 = 43
PP0 = 44
PP0H = 45
PP0HH = 46
PP0HHH = 47
PP1 = 48
PP1H = 49
PP1HH = 50
PP1HHH = 51
PP2 = 52
PP2H = 53
PP2HH = 54
PP2HHH = 55
PP3 = 56
PP3H = 57
PP4 = 58
PP5 = 59
PP6 = 60
PP7 = 61
PP7H = 62
PP7HH = 63
PP7HHH = 64
PPZ = 65
PPZH = 66
PPZHH = 67
PPZHHH = 68
PP_AARG = 69
PP_AARGH = 70
PP_AARGHH = 71
PP_AARGHHH = 72
PP_BARG = 73
PP_BARGH = 74
PP_BARGHH = 75
PP_BARGHHH = 76
_AEXP = 77
_BEXP = 78
_FP_FLAGS = 79
_FP_TEMP = 80
_SIGN = 81
hata_durum = 82
KOMUT = 83
variable KOMUT#0=83,KOMUT#1=84,KOMUT#2=85,KOMUT#3=86
variable KOMUT#4=87,KOMUT#5=88,KOMUT#6=89
BATARYA = 90
variable BATARYA#0=90,BATARYA#1=91
sayac = 92
BATvolt = 93
BATvoltH = 94
BATvoltHH = 95
BATvoltHHH = 96
#define __LCD_DTPORT PORTD
#define __LCD_RSPORT PORTD
#define __LCD_ENPORT PORTD
#define __SDA_PORT PORTC
#define __SCL_PORT PORTC
#define __XTAL 20
#define __LCD_INTERFACE 4
#define __LCD_DTPIN 4
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_LINES 2
#define __SDA_PIN 4
#define __SCL_PIN 3
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
        movwf 45
        movlw 48
        goto __DELAY_US_W_
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 59
        movlw 254
        call _BYTE__SEND_
        movf 59,W
        goto _BYTE__SEND_
OUT@HEXB
        clrf 39
OUT@HEXC
        movwf 52
        clrf 53
OUT@HEX
        bcf 32,3
        movf 39,W
        skpnz
        bsf 32,3
        movlw 4
        movwf 38
        swapf 53,W
        call H@DIG
        movf 53,W
        call H@DIG
        swapf 52,W
        call H@DIG
        movf 52,W
H@DIG
        andlw 15
        addlw 246
        skpnc
        addlw 7
        addlw 10
SEND@IT
        movwf 44
        decf 38,F
        skpnz
        bcf 32,3
        movf 39,W
        skpnz
        goto $ + 4
        subwf 38,W
        skpnc
        goto EX@SEND@IT
        movf 44,W
        skpz
        bcf 32,3
        btfsc 32,3
        goto EX@SEND@IT
        addlw 48
        goto _BYTE__SEND_
EX@SEND@IT
        return
OUT@FLOAT
        movwf _AEXP
        btfss 62,7
        goto $ + 3
        movlw 45
        call _BYTE__SEND_
        incfsz 64,F
        goto $ + 6
        incfsz 63,F
        goto $ + 4
        incf 62,F
        btfsc 3,2
        incf 62,F
        clrf PP_AARG
        clrf PP_AARGH
        clrf PP_AARGHH
        clrf PP_AARGHHH
        bsf 62,7
        movlw 106
        addwf 61,F
        bcf 3,0
        rrf 62,F
        rrf 63,F
        rrf 64,F
        rrf PP_AARGHHH,F
        rrf PP_AARGHH,F
        rrf PP_AARGH,F
        rrf PP_AARG,F
        incfsz 61,F
        goto $ - 9
        movf 64,W
        subwf 61,W
        addwf 64,F
        subwf 61,F
        movf 63,W
        subwf 62,W
        addwf 63,F
        subwf 62,F
        clrf 39
        call OUT@DEC32
        movlw 46
        call _BYTE__SEND_
FL@OUT
        clrf _BEXP
        bcf 3,0
        rlf PP_AARG,W
        movwf 64
        rlf PP_AARGH,W
        movwf 63
        rlf PP_AARGHH,W
        movwf 62
        rlf PP_AARGHHH,W
        movwf 61
        rlf _BEXP,F
        bcf 3,0
        rlf 64,F
        rlf 63,F
        rlf 62,F
        rlf 61,F
        rlf _BEXP,F
        movf PP_AARG,W
        addwf 64,F
        movf PP_AARGH,W
        btfsc 3,0
        incfsz PP_AARGH,W
        addwf 63,F
        movf PP_AARGHH,W
        btfsc 3,0
        incfsz PP_AARGHH,W
        addwf 62,F
        movf PP_AARGHHH,W
        btfsc 3,0
        incfsz PP_AARGHHH,W
        addwf 61,F
        btfsc 3,0
        incfsz _BEXP,F
        bcf 3,0
        rlf 64,F
        rlf 63,F
        rlf 62,F
        rlf 61,F
        rlf _BEXP,F
        movf _BEXP,W
        addlw 48
        call _BYTE__SEND_
        movf 64,W
        movwf PP_AARG
        movf 63,W
        movwf PP_AARGH
        movf 62,W
        movwf PP_AARGHH
        movf 61,W
        movwf PP_AARGHHH
        decfsz _AEXP,F
        goto FL@OUT
        bcf 3,0
        goto I@NT
OUT@DEC32
        bcf 32,3
        movf 39,W
        skpz
        goto $ + 4
        bsf 32,3
        movlw 10
        movwf 39
O@D32L1
        movf 64,W
        movwf 47
        movf 63,W
        movwf 46
        movf 62,W
        movwf 45
        movf 61,W
        movwf 44
        clrf 38
O@D32L2
        clrf 55
        clrf 54
        clrf 53
        movlw 10
        movwf 52
        call __DIVIDE_U3232_
        incf 38,F
        movf 38,W
        subwf 39,W
        btfss 3,Z
        goto O@D32L2
        movf 52,W
        btfss 3,Z
        bcf 32,3
        btfss 32,3
        goto O@D32SKP
        decfsz 39,W
        goto O@D32L3
O@D32SKP
        movf 52,W
        addlw 48
        call _BYTE__SEND_
O@D32L3
        decfsz 39,F
        goto O@D32L1
        goto I@NT
PRINT
        movwf 57
        bcf PORTD,3
        bcf PORTD,2
        bsf STATUS,5
        bcf TRISD,3
        bcf TRISD,2
        movlw 15
        andwf TRISD,F
        bcf STATUS,5
        movf 57,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 45
        movlw 128
        call __DELAY_US_W_
        movlw 51
        movwf 56
        call PR@LP
        movlw 19
        movwf 45
        movlw 136
        call __DELAY_US_W_
        call PR@LP
        movlw 100
        call __DELAY_US_
        call PR@LP
        movlw 100
        call __DELAY_US_
        movlw 34
        movwf 56
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 57,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 56
        btfss 32,0
        goto PRIT@SKP
        bcf PORTD,2
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 45
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
        movf 56,W
        andlw 240
        iorwf PORTD,F
        nop
        bcf PORTD,3
        swapf 56,F
        nop
        btfsc 32,0
        goto PR@LP
        movlw 50
        call __DELAY_US_
PR@EX
        movf 57,W
        goto I@NT
HBUSOUT2
        bsf 32,4
        btfss 32,4
HBUSOUT
        bcf 32,4
        btfsc 32,6
        goto $ + 6
        andlw 254
        movwf 41
        bsf 32,6
        bcf 3,0
        goto HI2C@FIN
        btfsc 32,7
        goto $ + 7
        movwf 56
        bsf 32,7
        call HBUS@ST
        skpnc
        goto HBUS@STP
        movf 56,W
        call HBUS@WRC
        skpnc
        goto HBUS@STP
        btfss 32,4
        goto HI2C@FIN
HBUS@STP
        bsf STATUS,5
        bsf 145,PP_PEN
        btfsc 145,PP_PEN
        goto $ - 1
        bcf STATUS,5
        bcf 32,6
        bcf 32,7
        bcf 32,5
        bcf 32,2
HI2C@FIN
        bsf 58,0
        skpc
        bcf 58,0
        goto I@NT
HBUS@RST
        call HBUS@RESTRT
        goto $ + 2
HBUS@ST
        call HBUS@STRT
        movf 41,W
        btfsc 32,5
        iorlw 1
HBUS@WRC
        movwf 19
        bsf STATUS,5
        btfsc 148,PP_R_W
        goto $ - 1
        bcf STATUS,5
        clrf 48
HBUS@LP1
        clrc
        bsf STATUS,5
        btfss 145,PP_ACKSTAT
        goto I@NT
        bcf STATUS,5
        goto $ + 1
        goto $ + 1
        decfsz 48,F
        goto HBUS@LP1
        bsf 3,0
        return
HBUS@STRT
        bsf STATUS,5
        bsf _I2C_SCL_PORT,_I2C_SCL_PIN
        bsf _I2C_SDA_PORT,_I2C_SDA_PIN
        bsf SSPCON2,PP_SEN
        btfsc 145,PP_SEN
        goto $ - 1
        goto I@NT
HBUS@RESTRT
        bsf STATUS,5
        bsf 145,PP_RSEN
        btfsc 145,PP_RSEN
        goto $ - 1
        goto I@NT
I2CIN2
        bsf 32,4
        btfss 32,4
I2CIN
        bcf 32,4
        btfsc 32,5
        goto I2C@II
        bsf 32,5
        call I2C@STR
        btfsc 3,0
        goto I2C@STP
I2C@II
        movlw 8
        movwf 49
I2CIN@LP
        call I2C@GB
        rlf 48,F
        decfsz 49,F
        goto I2CIN@LP
        btfss 32,4
        call I2C@DL
        call I2C@CH
        call I2C@CL
        btfsc 32,4
        call I2C@STP
        call I2C@DH
        movf 48,W
        bcf 3,0
        goto I@NT
I2COUT2
        bsf 32,4
        btfss 32,4
I2COUT
        bcf 32,4
        btfsc 32,6
        goto I2C@OUTC
        andlw 254
        movwf 41
        bsf 32,6
        bcf 3,0
        goto I@NT
I2C@OUTC
        btfsc 32,7
        goto I2COUT@I
        movwf 56
        bsf 32,7
        call I2C@STR
        btfsc 3,0
        goto I2C@STP
        movf 56,W
I2COUT@I
        call I2C@OUTB
        btfsc 3,0
        goto I2C@STP
        btfss 32,4
        goto I@NT
I2C@STP
        call I2C@DL
        call I2C@CH
        bcf 32,6
        bcf 32,7
        bcf 32,5
I2C@DH
        movf 35,W
        movwf 4
        movf 40,W
I2C@H
        bsf 4,7
        iorwf 0,F
        goto I2C@LH
I2C@DL
        movf 35,W
        movwf 4
        comf 40,W
I2C@L
        andwf 0,F
        bsf 4,7
        andwf 0,F
I2C@LH
        return
I2C@STR
        call I2C@DH
        call I2C@CH
        call I2C@DL
        call I2C@CL
        movf 41,W
        btfsc 32,5
        iorlw 1
I2C@OUTB
        movwf 48
        movlw 8
        movwf 49
I2COUT@LP
        rlf 48,F
        btfsc 3,0
        call I2C@DH
        btfss 3,0
        call I2C@DL
        call I2C@CH
        call I2C@CL
        decfsz 49,F
        goto I2COUT@LP
        call I2C@DH
I2C@GB
        call I2C@CH
        movf 35,W
        movwf 4
        movf 40,W
        andwf 0,W
        addlw 255
I2C@CL
        movf 36,W
        movwf 4
        comf 37,W
        goto I2C@L
I2C@CH
        movf 36,W
        movwf 4
I2C@HD
        movf 37,W
        goto I2C@H
_BYTE__SEND_
        btfsc 33,7
        goto PRINT
        goto HBUSOUT
        return
C@STROUT
        movwf 38
C@STROUTW
        clrf 34
C@STROUTLP
        movf 38,W
        bsf STATUS,6
        movwf 269
        bcf STATUS,6
        movf 39,W
        bsf STATUS,6
        movwf 271
        call __CREAD_
        skpnz
        goto I@NT
        call _BYTE__SEND_
        incf 38,F
        skpnz
        incf 39,F
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
        clrf 49
__DELAY_MS_W_
        movwf 48
DLY@P
        movlw 255
        addwf 48,F
        skpc
        addwf 49,F
        skpc
        goto I@NT
        movlw 3
        movwf 45
        movlw 230
        call __DELAY_US_W_
        goto DLY@P
__DELAY_US_
        clrf 45
__DELAY_US_W_
        addlw 252
        movwf 44
        comf 45,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 44,F
        skpnc
        goto $ - 3
        addwf 44,F
        nop
        incfsz 45,F
        goto $ - 8
        return
__DIVIDE_U3232_
        clrf 65
        clrf 66
        clrf 67
        clrf 68
        movlw 33
        movwf 50
        goto DIV@32X32SKIP
DIV@32X32LOOP
        rlf 65,F
        rlf 66,F
        rlf 67,F
        rlf 68,F
        movf 52,W
        subwf 65,W
        movf 53,W
        btfss 3,0
        incfsz 53,W
        subwf 66,W
        movf 54,W
        btfss 3,0
        incfsz 54,W
        subwf 67,W
        movf 55,W
        btfss 3,0
        incfsz 55,W
        subwf 68,W
        btfss 3,0
        goto DIV@32X32SKIP
        movwf 68
        movf 52,W
        subwf 65,F
        movf 53,W
        btfss 3,0
        incfsz 53,W
        subwf 66,F
        movf 54,W
        btfss 3,0
        incfsz 54,W
        subwf 67,F
        bsf 3,0
DIV@32X32SKIP
        rlf 44,F
        rlf 45,F
        rlf 46,F
        rlf 47,F
        decfsz 50,F
        goto DIV@32X32LOOP
        movf 68,W
        movwf 55
        movf 67,W
        movwf 54
        movf 66,W
        movwf 53
        movf 65,W
        movwf 52
        goto I@NT
I@NT
        bcf STATUS,7
        bcf STATUS,5
        bcf STATUS,6
        return
FPA@32
        movf PP_BARG,W
        subwf PP_AARG,W
        movwf _AEXP
        btfsc 3,0
        goto FPA@L3
        comf _AEXP,F
        incf _AEXP,F
        movf PP_AARG,W
        movwf _FP_TEMP
        movf PP_BARG,W
        movwf PP_AARG
        movf _FP_TEMP,W
        movwf PP_BARG
        movf PP_AARGH,W
        movwf _FP_TEMP
        movf PP_BARGH,W
        movwf PP_AARGH
        movf _FP_TEMP,W
        movwf PP_BARGH
        movf PP_AARGHH,W
        movwf _FP_TEMP
        movf PP_BARGHH,W
        movwf PP_AARGHH
        movf _FP_TEMP,W
        movwf PP_BARGHH
        movf PP_AARGHHH,W
        movwf _FP_TEMP
        movf PP_BARGHHH,W
        movwf PP_AARGHHH
        movf _FP_TEMP,W
        movwf PP_BARGHHH
FPA@L3
        movlw 26
        subwf _AEXP,W
        btfsc 3,0
        goto I@NT
        movf PP_BARG,F
        btfsc 3,2
        goto I@NT
        clrf 65
        movf PP_AARGH,W
        movwf _FP_TEMP
        xorwf PP_BARGH,W
        movwf _SIGN
        bsf PP_AARGH,7
        bsf PP_BARGH,7
FPA@L8
        movlw 8
        subwf _AEXP,F
        btfss 3,0
        goto FPA@L9
        movf PP_BARGHHH,W
        movwf 65
        movf PP_BARGHH,W
        movwf PP_BARGHHH
        movf PP_BARGH,W
        movwf PP_BARGHH
        clrf PP_BARGH
        goto FPA@L8
FPA@L9
        addwf _AEXP,F
        btfsc 3,2
        goto FPA@L15
FPA@L14
        bcf 3,0
        rrf PP_BARGH,F
        rrf PP_BARGHH,F
        rrf PP_BARGHHH,F
        rrf 65,F
        decf _AEXP,F
        movf _AEXP,F
        btfss 3,2
        goto FPA@L14
FPA@L15
        btfss _SIGN,7
        goto FPA@L17
        movf PP_BARGHHH,W
        subwf PP_AARGHHH,F
        movf PP_BARGHH,W
        btfss 3,0
        incfsz PP_BARGHH,W
        subwf PP_AARGHH,F
        movf PP_BARGH,W
        btfss 3,0
        incfsz PP_BARGH,W
        subwf PP_AARGH,F
        btfsc 3,0
        goto FPA@L19
        comf PP_AARGH,F
        comf PP_AARGHH,F
        comf PP_AARGHHH,F
        incfsz PP_AARGHHH,F
        goto $ + 4
        incf PP_AARGHH,F
        btfsc 3,2
        incf PP_AARGH,F
        movlw 128
        xorwf _FP_TEMP,F
FPA@L19
        comf 65,F
        incf 65,F
        btfsc 3,2
        goto FPA@L21
        decf PP_AARGHHH,F
        incfsz PP_AARGHHH,W
        goto $ + 5
        decf PP_AARGHH,F
        incf PP_AARGHH,W
        btfsc 3,2
        decf PP_AARGH,F
FPA@L21
        movlw 4
        movwf _AEXP
FPA@L22
        movf PP_AARGH,F
        btfss 3,2
        goto FPA@L23
        movf PP_AARGHH,W
        movwf PP_AARGH
        movf PP_AARGHHH,W
        movwf PP_AARGHH
        movf 65,W
        movwf PP_AARGHHH
        clrf 65
        movlw 8
        subwf PP_AARG,F
        btfss 3,0
        goto FPA@RES0
        decf _AEXP,F
        btfsc 3,2
        goto FPA@RES0
        goto FPA@L22
FPA@L23
        btfsc PP_AARGH,7
        goto FPA@L29
        bcf 3,0
        rlf 65,F
        rlf PP_AARGHHH,F
        rlf PP_AARGHH,F
        rlf PP_AARGH,F
        decf PP_AARG,F
        btfsc 3,2
        goto FPA@RES0
        goto FPA@L23
FPA@L29
        btfss 65,7
        goto FPA@L35
        clrf 65
        goto FPA@INCREMENT_IT
FPA@L35
        goto FPA@L50
FPA@L17
        movf PP_BARGHHH,W
        addwf PP_AARGHHH,F
        movf PP_BARGHH,W
        btfsc 3,0
        incfsz PP_BARGHH,W
        addwf PP_AARGHH,F
        movf PP_BARGH,W
        btfsc 3,0
        incfsz PP_BARGH,W
        addwf PP_AARGH,F
        btfss 3,0
        goto FPA@L40
FPA@ADJUST_RIGHT
        rrf PP_AARGH,F
        rrf PP_AARGHH,F
        rrf PP_AARGHHH,F
        rrf 65,F
        incf PP_AARG,F
        btfsc 3,2
        goto FPA@OVERFLOW
FPA@L40
        btfss 65,7
        goto FPA@L50
FPA@INCREMENT_IT
        incfsz PP_AARGHHH,F
        goto FPA@L50
        incfsz PP_AARGHH,F
        goto FPA@L50
        incfsz PP_AARGH,F
        goto FPA@L50
        bsf 3,0
        bcf PP_AARG,0
        goto FPA@ADJUST_RIGHT
FPA@L50
        goto FPA@SET_SIGN
FPA@RES0
        clrf PP_AARG
        goto FPA@MANTISSA
FPA@OVERFLOW
        bsf _FP_FLAGS,5
        movlw 255
        movwf PP_AARG
FPA@MANTISSA
        clrf PP_AARGHHH
        clrf PP_AARGHH
        movlw 128
        movwf PP_AARGH
FPA@SET_SIGN
        btfsc _FP_TEMP,7
        goto FPA@L52
        bcf PP_AARGH,7
FPA@L52
        goto I@NT
FPD@32
        movf PP_AARGH,W
        movwf 67
        xorwf PP_BARGH,W
        movwf _SIGN
        movf PP_BARG,F
        btfsc 3,2
        goto FPD@DIV0
        movf PP_AARG,F
        btfsc 3,2
        goto FPD@RES0
        movf PP_BARG,W
        subwf PP_AARG,F
        movlw 127
        btfsc 3,0
        goto FPD@L7
        addwf PP_AARG,F
        btfss 3,0
        goto FPD@UNDERFLOW
        goto FPD@L12
FPD@L7
        addwf PP_AARG,F
        btfsc 3,0
        goto FPD@OVERFLOW
FPD@L12
        movf PP_AARGHHH,W
        movwf 65
        movf PP_AARGHH,W
        movwf 66
        bsf 67,7
        bsf PP_BARGH,7
        movlw 24
        movwf _FP_TEMP
        clrf PP_AARGHHH
        clrf PP_AARGHH
        clrf PP_AARGH
        goto FPD@START
FPD@LOOP
        btfsc 3,0
        goto FPD@SUBTRACT
FPD@START
        movf PP_BARGHHH,W
        subwf 65,W
        movf PP_BARGHH,W
        btfss 3,0
        incfsz PP_BARGHH,W
        subwf 66,W
        movf PP_BARGH,W
        btfss 3,0
        incfsz PP_BARGH,W
        subwf 67,W
        btfss 3,0
        goto FPD@SKIP_SUB
FPD@SUBTRACT
        movf PP_BARGHHH,W
        subwf 65,F
        movf PP_BARGHH,W
        btfss 3,0
        incfsz PP_BARGHH,W
        subwf 66,F
        movf PP_BARGH,W
        btfss 3,0
        incfsz PP_BARGH,W
        subwf 67,F
        bsf 3,0
FPD@SKIP_SUB
        rlf PP_AARGHHH,F
        rlf PP_AARGHH,F
        rlf PP_AARGH,F
        rlf 65,F
        rlf 66,F
        rlf 67,F
        decfsz _FP_TEMP,F
        goto FPD@LOOP
        btfsc PP_AARGH,7
        goto FPD@L20
        movf PP_AARG,F
        btfsc 3,2
        goto FPD@UNDERFLOW
        rrf _SIGN,F
        decf PP_AARG,F
        incf _FP_TEMP,F
        rlf _SIGN,F
        goto FPD@LOOP
FPD@L20
        btfsc 3,0
        goto FPD@ADD_1
        movf PP_BARGHHH,W
        subwf 65,F
        movf PP_BARGHH,W
        btfss 3,0
        incfsz PP_BARGHH,W
        subwf 66,F
        movf PP_BARGH,W
        btfss 3,0
        incfsz PP_BARGH,W
        subwf 67,F
        btfss 3,0
        goto FPD@L36
FPD@ADD_1
        incfsz PP_AARGHHH,F
        goto FPD@L36
        incfsz PP_AARGHH,F
        goto FPD@L36
        incfsz PP_AARGH,F
        goto FPD@L36
        rrf PP_AARGH,F
        rrf PP_AARGHH,F
        rrf PP_AARGHHH,F
        incf PP_AARG,F
        btfsc 3,2
        goto FPD@OVERFLOW
FPD@L36
        goto FPD@SET_SIGN
FPD@DIV0
        bsf _FP_FLAGS,3
        goto FPD@SATURATE
FPD@UNDERFLOW
        bsf _FP_FLAGS,2
FPD@RES0
        clrf PP_AARG
        goto FPD@MANTISSA
FPD@OVERFLOW
        bsf _FP_FLAGS,1
FPD@SATURATE
        movlw 255
        movwf PP_AARG
FPD@MANTISSA
        clrf PP_AARGHHH
        clrf PP_AARGHH
        movlw 128
        movwf PP_AARGH
FPD@SET_SIGN
        btfsc _SIGN,7
        goto FPD@L38
        bcf PP_AARGH,7
FPD@L38
        goto I@NT
FPM@32
        movf PP_AARGH,W
        movwf 67
        xorwf PP_BARGH,W
        movwf _SIGN
        movf PP_AARG,W
        xorlw 0
        btfss 3,2
        movf PP_BARG,W
        xorlw 0
        btfsc 3,2
        goto FPM@RES0
        addwf PP_AARG,F
        movlw 126
        btfss 3,0
        goto FPM@L3
        subwf PP_AARG,F
        btfsc 3,0
        goto FPM@OVERFLOW
        goto FPM@L8
FPM@L3
        subwf PP_AARG,F
        btfss 3,0
        goto FPM@UNDERFLOW
FPM@L8
        movf PP_AARGHHH,W
        movwf 65
        movf PP_AARGHH,W
        movwf 66
        bsf 67,7
        bsf PP_BARGH,7
        clrf PP_AARGHHH
        clrf PP_AARGHH
        clrf PP_AARGH
        movlw 24
        movwf _FP_TEMP
FPM@L9
        rrf 67,F
        rrf 66,F
        rrf 65,F
        btfss 3,0
        goto FPM@L12
        movf PP_BARGHHH,W
        addwf PP_AARGHHH,F
        movf PP_BARGHH,W
        btfsc 3,0
        incfsz PP_BARGHH,W
        addwf PP_AARGHH,F
        movf PP_BARGH,W
        btfsc 3,0
        incfsz PP_BARGH,W
        addwf PP_AARGH,F
FPM@L12
        rrf PP_AARGH,F
        rrf PP_AARGHH,F
        rrf PP_AARGHHH,F
        decfsz _FP_TEMP,F
        goto FPM@L9
        btfsc PP_AARGH,7
        goto FPM@L14
        rlf PP_AARGHHH,F
        rlf PP_AARGHH,F
        rlf PP_AARGH,F
        movf PP_AARG,F
        btfsc 3,2
        goto FPM@UNDERFLOW
        decf PP_AARG,F
        rlf 67,W
FPM@L14
        btfss 3,0
        goto FPM@L28
        incfsz PP_AARGHHH,F
        goto FPM@L28
        incfsz PP_AARGHH,F
        goto FPM@L28
        incfsz PP_AARGH,F
        goto FPM@L28
        bsf 3,0
        rrf PP_AARGH,F
        rrf PP_AARGHH,F
        rrf PP_AARGHHH,F
        incf PP_AARG,F
        btfsc 3,2
        goto FPM@OVERFLOW
FPM@L28
        goto FPM@SET_SIGN
FPM@UNDERFLOW
        bsf _FP_FLAGS,2
FPM@RES0
        clrf PP_AARG
        goto FPM@MANTISSA
FPM@OVERFLOW
        bsf _FP_FLAGS,1
        movlw 255
        movwf PP_AARG
FPM@MANTISSA
        clrf PP_AARGHHH
        clrf PP_AARGHH
        movlw 128
        movwf PP_AARGH
FPM@SET_SIGN
        btfsc _SIGN,7
        goto FPM@L30
        bcf PP_AARGH,7
FPM@L30
        goto I@NT
_UNS_INT08_TOFL32
        movwf PP_AARG
        clrf PP_AARGH
_UNS_INT16_TOFL32
        clrf PP_AARGHH
        clrf PP_AARGHHH
_UNSGN_INT32_TOFL32
        bcf _SIGN,7
        goto IF@L5
_SGN_INT32_TOFL32
        bcf _SIGN,7
        btfss PP_AARGHHH,7
        goto IF@L5
        comf PP_AARGHHH,F
        comf PP_AARGHH,F
        comf PP_AARGH,F
        comf PP_AARG,F
        incfsz PP_AARG,F
        goto IF@L4
        incfsz PP_AARGH,F
        goto IF@L4
        incf PP_AARGHH,F
        btfsc 3,2
        incf PP_AARGHHH,F
IF@L4
        bsf _SIGN,7
IF@L5
        movlw 150
        movwf _FP_TEMP
        movf PP_AARGHHH,F
        btfsc 3,2
        goto IF@L7
        movlw 8
        addwf _FP_TEMP,F
        movf PP_AARGH,W
        movwf PP_AARG
        movf PP_AARGHH,W
        movwf PP_AARGH
        movf PP_AARGHHH,W
        movwf PP_AARGHH
        goto IF@L18
IF@L7
        movf PP_AARGHH,F
        btfss 3,2
        goto IF@L18
        movlw 8
        subwf _FP_TEMP,F
        movf PP_AARGH,W
        btfss 3,2
        goto IF@L20
        movlw 8
        subwf _FP_TEMP,F
        movf PP_AARG,W
        btfss 3,2
        goto IF@L22
        movf PP_AARGHHH,W
        movwf _FP_TEMP
        goto IF@EXIT
IF@L22
        clrf PP_AARG
IF@L20
        movwf PP_AARGHH
        movf PP_AARG,W
        movwf PP_AARGH
        clrf PP_AARG
IF@L18
        btfsc PP_AARGHH,7
        goto IF@L24
        bcf 3,0
        rlf PP_AARG,F
        rlf PP_AARGH,F
        rlf PP_AARGHH,F
        decf _FP_TEMP,F
        goto IF@L18
IF@L24
        btfss _SIGN,7
        bcf PP_AARGHH,7
IF@EXIT
        movf PP_AARG,W
        movwf PP_AARGHHH
        movf _FP_TEMP,W
        movwf PP_AARG
        movf PP_AARGHH,W
        movwf _FP_TEMP
        movf PP_AARGH,W
        movwf PP_AARGHH
        movf _FP_TEMP,W
        movwf PP_AARGH
        goto I@NT
proton#main#start
        clrf STATUS
        movlw 40
        movwf SSPCON
        bsf STATUS,5
        movlw 49
        movwf SSPADD
        movlw 128
        movwf SSPSTAT
        bcf STATUS,5
        movlw 64
        movwf _FP_FLAGS
        clrf 32
F2_SOF equ $ ; CUBESAT_I2C_DEBUG_MASTER.PRP
F2_EOF equ $ ; CUBESAT_I2C_DEBUG_MASTER.PRP
F1_SOF equ $ ; CUBESAT_I2C_DEBUG_MASTER.BAS
F1_000005 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] ALL_DIGITAL = TRUE
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000018 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] ADCON0 = 0
        bcf STATUS,5
ram_bank = 0
        clrf ADCON0
Main
F1_000021 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] PRINT AT 1,1, "I2C DEBUG MASTER"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw ((STR@LB1 >> 8) & 255)
        movwf GEN4H
        movlw (STR@LB1 & 255)
        f@call C@STROUT
F1_000022 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] PRINT AT 2,1, "....ACILIYOR...."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw ((STR@LB2 >> 8) & 255)
        movwf GEN4H
        movlw (STR@LB2 & 255)
        f@call C@STROUT
F1_000023 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        f@call __DELAY_MS_W_
F1_000024 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] PRINT AT 2,1, ".....ACILDI....."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw ((STR@LB3 >> 8) & 255)
        movwf GEN4H
        movlw (STR@LB3 & 255)
        f@call C@STROUT
F1_000025 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        f@call __DELAY_MS_W_
F1_000026 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] CLS
        f@call LCD@CLS
Dongu
F1_000046 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] I2CIN PORTC.4, PORTC.3, $64,[HATA_DURUM]
        movlw PORTC
        movwf GEN
        movlw 16
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 8
        movwf GEN2H
        movlw 100
        f@call I2COUT
        f@call I2CIN2
        movwf hata_durum
F1_000047 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000053 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] DELAYMS 20
        movlw 20
        f@call __DELAY_MS_
F1_000057 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] BATVOLT = (BATARYA[0] * 256 + BATARYA[1])
        movf BATARYA#0,W
        movwf PBP#VAR0
        movf PBP#VAR0,W
        f@call _UNS_INT08_TOFL32
        clrf PP_BARGHHH
        clrf PP_BARGHH
        clrf PP_BARGH
        movlw 135
        movwf PP_BARG
        f@call FPM@32
        movf PP_AARGHHH,W
        movwf PP7HHH
        movf PP_AARGHH,W
        movwf PP7HH
        movf PP_AARGH,W
        movwf PP7H
        movf PP_AARG,W
        movwf PP7
        movf BATARYA#1,W
        movwf PBP#VAR1
        movf PBP#VAR1,W
        f@call _UNS_INT08_TOFL32
        movf PP7HHH,W
        movwf PP_BARGHHH
        movf PP7HH,W
        movwf PP_BARGHH
        movf PP7H,W
        movwf PP_BARGH
        movf PP7,W
        movwf PP_BARG
        f@call FPA@32
        movf PP_AARGHHH,W
        movwf BATvoltHHH
        movf PP_AARGHH,W
        movwf BATvoltHH
        movf PP_AARGH,W
        movwf BATvoltH
        movf PP_AARG,W
        movwf BATvolt
F1_000058 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] BATVOLT = BATVOLT / 102
        clrf PP_BARGHHH
        clrf PP_BARGHH
        movlw 76
        movwf PP_BARGH
        movlw 133
        movwf PP_BARG
        movf BATvoltHHH,W
        movwf PP_AARGHHH
        movf BATvoltHH,W
        movwf PP_AARGHH
        movf BATvoltH,W
        movwf PP_AARGH
        movf BATvolt,W
        movwf PP_AARG
        f@call FPD@32
        movf PP_AARGHHH,W
        movwf BATvoltHHH
        movf PP_AARGHH,W
        movwf BATvoltHH
        movf PP_AARGH,W
        movwf BATvoltH
        movf PP_AARG,W
        movwf BATvolt
F1_000060 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] TOGGLE PORTB.1
        movlw 2
        xorwf PORTB,F
        bsf STATUS,5
ram_bank = 1
        bcf TRISB,1
F1_000061 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] PRINT AT 1,1, "D:",HEX HATA_DURUM, " BAT:", HEX BATARYA[0]," ", HEX BATARYA[1]
        movlw 128
        bcf STATUS,5
ram_bank = 0
        movwf BPFH
        f@call LCD@CRS
        movlw 68
        f@call PRINT
        movlw 58
        f@call PRINT
        movf hata_durum,W
        f@call OUT@HEXB
        movlw 32
        f@call PRINT
        movlw 66
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 116
        f@call PRINT
        movlw 58
        f@call PRINT
        movf BATARYA#0,W
        f@call OUT@HEXB
        movlw 32
        f@call PRINT
        movf BATARYA#1,W
        f@call OUT@HEXB
F1_000062 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] PRINT AT 2,1, "KMT:", DEC BATVOLT
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 75
        f@call PRINT
        movlw 109
        f@call PRINT
        movlw 116
        f@call PRINT
        movlw 58
        f@call PRINT
        movf BATvoltHHH,W
        movwf PP7HHH
        movf BATvoltHH,W
        movwf PP7HH
        movf BATvoltH,W
        movwf PP7H
        movf BATvolt,W
        movwf PP7
        movlw 3
        f@call OUT@FLOAT
F1_000064 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call __DELAY_MS_W_
F1_000066 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] GOTO DONGU
        f@jump Dongu
DATAGONDER
F1_000069 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] HBSTART
        f@call HBUS@STRT
F1_000070 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] HBUSOUT $64,[1,2,3,4,5]
        movlw 100
        f@call HBUSOUT
        movlw 1
        f@call HBUSOUT
        movlw 2
        f@call HBUSOUT
        movlw 3
        f@call HBUSOUT
        movlw 4
        f@call HBUSOUT
        movlw 5
        f@call HBUSOUT2
F1_000071 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] HBSTOP
        f@call HBUS@STP
F1_000072 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] RETURN
        return
F1_000076 equ $ ; IN [CUBESAT_I2C_DEBUG_MASTER.BAS] END
PB@LB2
        f@jump PB@LB2
F1_EOF equ $ ; CUBESAT_I2C_DEBUG_MASTER.BAS
PB@LB3
        f@jump PB@LB3
STR@LB1
        de 73,50,67,32,68,69,66,85,71,32,77,65,83,84,69,82,0
STR@LB2
        de 46,46,46,46,65,67,73,76,73,89,79,82,46,46,46,46,0
STR@LB3
        de 46,46,46,46,46,65,67,73,76,68,73,46,46,46,46,46,0
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&BOREN_ON&LVP_OFF&CPD_OFF&WRT_OFF&DEBUG_OFF&CP_OFF
        end
