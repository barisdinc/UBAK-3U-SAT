;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.4.5
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. May 2012
;----------------------------------------------------------
;
#define CONFIG_REQ 1
#define watchdog_req 1
 LIST  P = 18F4520, F = INHX32, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255, T=ON
PORTA equ 0X0F80
PORTB equ 0X0F81
PORTC equ 0X0F82
PORTD equ 0X0F83
PORTE equ 0X0F84
LATA equ 0X0F89
LATB equ 0X0F8A
LATC equ 0X0F8B
LATD equ 0X0F8C
LATE equ 0X0F8D
DDRA equ 0X0F92
TRISA equ 0X0F92
DDRB equ 0X0F93
TRISB equ 0X0F93
DDRC equ 0X0F94
TRISC equ 0X0F94
DDRD equ 0X0F95
TRISD equ 0X0F95
DDRE equ 0X0F96
TRISE equ 0X0F96
OSCTUNE equ 0X0F9B
PIE1 equ 0X0F9D
PIR1 equ 0X0F9E
IPR1 equ 0X0F9F
PIE2 equ 0X0FA0
PIR2 equ 0X0FA1
IPR2 equ 0X0FA2
EECON1 equ 0X0FA6
EECON2 equ 0X0FA7
EEDATL equ 0X0FA8
EEDATA equ 0X0FA8
EEADR equ 0X0FA9
RCSTA equ 0X0FAB
TXSTA equ 0X0FAC
TXREG equ 0X0FAD
RCREG equ 0X0FAE
SPBRG equ 0X0FAF
SPBRGH equ 0X0FB0
T3CON equ 0X0FB1
TMR3L equ 0X0FB2
TMR3LH equ 0X0FB3
TMR3H equ 0X0FB3
CMCON equ 0X0FB4
CVRCON equ 0X0FB5
ECCP1AS equ 0X0FB6
PWM1CON equ 0X0FB7
BAUDCON equ 0X0FB8
BAUDCTL equ 0X0FB8
CCP2CON equ 0X0FBA
CCPR2 equ 0X0FBB
CCPR2L equ 0X0FBB
CCPR2LH equ 0X0FBC
CCPR2H equ 0X0FBC
CCP1CON equ 0X0FBD
CCPR1 equ 0X0FBE
CCPR1L equ 0X0FBE
CCPR1LH equ 0X0FBF
CCPR1H equ 0X0FBF
ADCON2 equ 0X0FC0
ADCON1 equ 0X0FC1
ADCON0 equ 0X0FC2
ADRES equ 0X0FC3
ADRESL equ 0X0FC3
ADRESLH equ 0X0FC4
ADRESH equ 0X0FC4
SSPCON2 equ 0X0FC5
SSPCON1 equ 0X0FC6
SSPSTAT equ 0X0FC7
SSPADD equ 0X0FC8
SSPBUF equ 0X0FC9
T2CON equ 0X0FCA
PR2 equ 0X0FCB
TMR2 equ 0X0FCC
T1CON equ 0X0FCD
TMR1L equ 0X0FCE
TMR1LH equ 0X0FCF
TMR1H equ 0X0FCF
RCON equ 0X0FD0
WDTCON equ 0X0FD1
HLVDCON equ 0X0FD2
LVDCON equ 0X0FD2
OSCCON equ 0X0FD3
T0CON equ 0X0FD5
TMR0L equ 0X0FD6
TMR0LH equ 0X0FD7
TMR0H equ 0X0FD7
STATUS equ 0X0FD8
FSR2L equ 0X0FD9
FSR2LH equ 0X0FDA
FSR2H equ 0X0FDA
PLUSW2 equ 0X0FDB
PREINC2 equ 0X0FDC
POSTDEC2 equ 0X0FDD
POSTINC2 equ 0X0FDE
INDF2 equ 0X0FDF
BSR equ 0X0FE0
FSR1L equ 0X0FE1
FSR1LH equ 0X0FE2
FSR1H equ 0X0FE2
PLUSW1 equ 0X0FE3
PREINC1 equ 0X0FE4
POSTDEC1 equ 0X0FE5
POSTINC1 equ 0X0FE6
INDF1 equ 0X0FE7
WREG equ 0X0FE8
FSR0L equ 0X0FE9
FSR0LH equ 0X0FEA
FSR0H equ 0X0FEA
PLUSW0 equ 0X0FEB
PREINC0 equ 0X0FEC
POSTDEC0 equ 0X0FED
POSTINC0 equ 0X0FEE
INDF0 equ 0X0FEF
INTCON3 equ 0X0FF0
INTCON2 equ 0X0FF1
INTCON equ 0X0FF2
PRODL equ 0X0FF3
PRODLH equ 0X0FF4
PRODH equ 0X0FF4
TABLAT equ 0X0FF5
TBLPTRL equ 0X0FF6
TBLPTRLH equ 0X0FF7
TBLPTRH equ 0X0FF7
TBLPTRU equ 0X0FF8
TBLPTRLHH equ 0X0FF8
PC equ 0X0FF9
PCL equ 0X0FF9
PCLATH equ 0X0FFA
PCLATU equ 0X0FFB
STKPTR equ 0X0FFC
TOS equ 0X0FFD
TOSL equ 0X0FFD
TOSLH equ 0X0FFE
TOSH equ 0X0FFE
TOSU equ 0X0FFF
_I2C_SCL_PORT=TRISC
_I2C_SCL_PIN=3
_I2C_SDA_PORT=TRISC
_I2C_SDA_PIN=4
RA0=0
RA1=1
RA2=2
RA3=3
RA4=4
RA5=5
RA6=6
RA7=7
AN0=0
AN1=1
AN2=2
AN3=3
T0CKI=4
AN4=5
OSC2=6
OSC1=7
VREFN=2
VREFP=3
SS=5
CLKO=6
CLKI=7
CVREF=2
NOT_SS=5
LVDIN=5
RB0=0
RB1=1
RB2=2
RB3=3
RB4=4
RB5=5
RB6=6
RB7=7
INT0=0
INT1=1
INT2=2
CCP2_PORTB=3
KBI0=4
KBI1=5
KBI2=6
KBI3=7
AN12=0
AN10=1
AN8=2
AN9=3
AN11=4
PGM=5
PGC=6
PGD=7
RC0=0
RC1=1
RC2=2
RC3=3
RC4=4
RC5=5
RC6=6
RC7=7
T1OSO=0
T1OSI=1
CCP1=2
SCK=3
SDI=4
SDO=5
TX=6
RX=7
T13CKI=0
CCP2_PORTC=1
SCL=3
SDA=4
CK=6
T1CKI=0
RD0=0
PP_RD0=0
RD1=1
PP_RD1=1
RD2=2
PP_RD2=2
RD3=3
PP_RD3=3
RD4=4
PP_RD4=4
RD5=5
PP_RD5=5
RD6=6
PP_RD6=6
RD7=7
PP_RD7=7
PSP0=0
PSP1=1
PSP2=2
PSP3=3
PSP4=4
PSP5=5
PSP6=6
PSP7=7
P1B=5
P1C=6
P1D=7
RE0=0
RE1=1
RE2=2
RE3=3
RD=0
PP_RD=0
WR=1
PP_WR=1
CS=2
MCLR=3
NOT_RD=0
NOT_WR=1
NOT_CS=2
NOT_MCLR=3
VPP=3
AN5=0
AN6=1
AN7=2
LATA0=0
LATA1=1
LATA2=2
LATA3=3
LATA4=4
LATA5=5
LATA6=6
LATA7=7
LATB0=0
LATB1=1
LATB2=2
LATB3=3
LATB4=4
LATB5=5
LATB6=6
LATB7=7
LATC0=0
LATC1=1
LATC2=2
LATC3=3
LATC4=4
LATC5=5
LATC6=6
LATC7=7
LATD0=0
LATD1=1
LATD2=2
LATD3=3
LATD4=4
LATD5=5
LATD6=6
LATD7=7
LATE0=0
LATE1=1
LATE2=2
RA0=0
RA1=1
RA2=2
RA3=3
RA4=4
RA5=5
RA6=6
RA7=7
TRISA0=0
TRISA1=1
TRISA2=2
TRISA3=3
TRISA4=4
TRISA5=5
TRISA6=6
TRISA7=7
RB0=0
RB1=1
RB2=2
RB3=3
RB4=4
RB5=5
RB6=6
RB7=7
TRISB0=0
TRISB1=1
TRISB2=2
TRISB3=3
TRISB4=4
TRISB5=5
TRISB6=6
TRISB7=7
RC0=0
RC1=1
RC2=2
RC3=3
RC4=4
RC5=5
RC6=6
RC7=7
TRISC0=0
TRISC1=1
TRISC2=2
TRISC3=3
TRISC4=4
TRISC5=5
TRISC6=6
TRISC7=7
RD0=0
PP_RD0=0
RD1=1
PP_RD1=1
RD2=2
PP_RD2=2
RD3=3
PP_RD3=3
RD4=4
PP_RD4=4
RD5=5
PP_RD5=5
RD6=6
PP_RD6=6
RD7=7
PP_RD7=7
TRISD0=0
TRISD1=1
TRISD2=2
TRISD3=3
TRISD4=4
TRISD5=5
TRISD6=6
TRISD7=7
RE0=0
RE1=1
RE2=2
RE3=3
TRISE0=0
TRISE1=1
TRISE2=2
PSPMODE=4
IBOV=5
OBF=6
IBF=7
TUN0=0
TUN1=1
TUN2=2
TUN3=3
TUN4=4
PLLEN=6
INTSRC=7
TMR1IE=0
TMR2IE=1
CCP1IE=2
SSPIE=3
TXIE=4
RCIE=5
ADIE=6
PSPIE=7
TMR1IF=0
TMR2IF=1
CCP1IF=2
SSPIF=3
TXIF=4
PP_TXIF=4
RCIF=5
PP_RCIF=5
ADIF=6
PSPIF=7
TMR1IP=0
TMR2IP=1
CCP1IP=2
SSPIP=3
TXIP=4
RCIP=5
ADIP=6
PSPIP=7
CCP2IE=0
TMR3IE=1
HLVDIE=2
BCLIE=3
EEIE=4
CMIE=6
OSCFIE=7
LVDIE=2
CCP2IF=0
TMR3IF=1
HLVDIF=2
BCLIF=3
EEIF=4
CMIF=6
OSCFIF=7
LVDIF=2
CCP2IP=0
TMR3IP=1
HLVDIP=2
BCLIP=3
EEIP=4
CMIP=6
OSCFIP=7
LVDIP=2
RD=0
PP_RD=0
WR=1
PP_WR=1
WREN=2
PP_WREN=2
WRERR=3
PP_WRERR=3
FREE=4
CFGS=6
EEPGD=7
PP_EEPGD=7
RX9D=0
OERR=1
PP_OERR=1
FERR=2
ADEN=3
CREN=4
PP_CREN=4
SREN=5
RX9=6
SPEN=7
ADDEN=3
TX9D=0
TRMT=1
BRGH=2
SENDB=3
PP_SENDB=3
SYNC=4
TXEN=5
TX9=6
CSRC=7
TMR3ON=0
TMR3CS=1
T3SYNC=2
T3CCP1=3
PP_T3CCP1=3
T3CKPS0=4
T3CKPS1=5
T3CCP2=6
PP_T3CCP2=6
RD16=7
PP_RD16=7
NOT_T3SYNC=2
CM0=0
CM1=1
CM2=2
CIS=3
C1INV=4
C2INV=5
C1OUT=6
C2OUT=7
CVR0=0
CVR1=1
CVR2=2
CVR3=3
CVRSS=4
CVRR=5
CVROE=6
CVREN=7
PSSBD0=0
PSSBD1=1
PSSAC0=2
PSSAC1=3
ECCPAS0=4
ECCPAS1=5
ECCPAS2=6
ECCPASE=7
PDC0=0
PDC1=1
PDC2=2
PDC3=3
PDC4=4
PDC5=5
PDC6=6
PRSEN=7
ABDEN=0
WUE=1
BRG16=3
SCKP=4
RCIDL=6
ABDOVF=7
TXCKP=4
RXDTP=5
RCMT=6
ABDEN=0
WUE=1
BRG16=3
SCKP=4
RCIDL=6
ABDOVF=7
TXCKP=4
RXDTP=5
RCMT=6
CCP2M0=0
CCP2M1=1
CCP2M2=2
CCP2M3=3
DC2B0=4
DC2B1=5
CCP2Y=4
CCP2X=5
CCP1M0=0
CCP1M1=1
CCP1M2=2
CCP1M3=3
DC1B0=4
DC1B1=5
P1M0=6
P1M1=7
CCP1Y=4
CCP1X=5
ADCS0=0
ADCS1=1
ADCS2=2
ACQT0=3
ACQT1=4
ACQT2=5
ADFM=7
PCFG0=0
PCFG1=1
PCFG2=2
PCFG3=3
VCFG0=4
VCFG1=5
ADON=0
PP_ADON=0
GO=1
CHS0=2
CHS1=3
CHS2=4
CHS3=5
DONE=1
NOT_DONE=1
GO_DONE=1
PP_GO_DONE=1
SEN=0
PP_SEN=0
RSEN=1
PP_RSEN=1
PEN=2
PP_PEN=2
RCEN=3
PP_RCEN=3
ACKEN=4
PP_ACKEN=4
ACKDT=5
PP_ACKDT=5
ACKSTAT=6
GCEN=7
SSPM0=0
SSPM1=1
SSPM2=2
SSPM3=3
CKP=4
SSPEN=5
SSPOV=6
WCOL=7
BF=0
UA=1
CKE=6
SMP=7
NOT_W=2
NOT_A=5
R_W=2
PP_R_W=2
D_A=5
NOT_WRITE=2
NOT_ADDRESS=5
T2CKPS0=0
PP_T2CKPS0=0
T2CKPS1=1
PP_T2CKPS1=1
TMR2ON=2
PP_TMR2ON=2
T2OUTPS0=3
T2OUTPS1=4
T2OUTPS2=5
T2OUTPS3=6
TMR1ON=0
TMR1CS=1
T1SYNC=2
T1OSCEN=3
T1CKPS0=4
T1CKPS1=5
T1RUN=6
RD16=7
PP_RD16=7
NOT_T1SYNC=2
BOR=0
POR=1
PD=2
TO=3
RI=4
SBOREN=6
IPEN=7
NOT_BOR=0
NOT_POR=1
NOT_PD=2
NOT_TO=3
NOT_RI=4
SWDTEN=0
SWDTE=0
LVDL0=0
LVDL1=1
LVDL2=2
LVDL3=3
LVDEN=4
IRVST=5
LVV0=0
LVV1=1
LVV2=2
LVV3=3
BGST=5
HLVDL0=0
HLVDL1=1
HLVDL2=2
HLVDL3=3
HLVDEN=4
VDIRMAG=7
IVRST=5
LVDL0=0
LVDL1=1
LVDL2=2
LVDL3=3
LVDEN=4
IRVST=5
LVV0=0
LVV1=1
LVV2=2
LVV3=3
BGST=5
HLVDL0=0
HLVDL1=1
HLVDL2=2
HLVDL3=3
HLVDEN=4
VDIRMAG=7
IVRST=5
SCS0=0
SCS1=1
IOFS=2
OSTS=3
IRCF0=4
IRCF1=5
IRCF2=6
IDLEN=7
FLTS=2
T0PS0=0
T0PS1=1
T0PS2=2
PSA=3
T0SE=4
T0CS=5
T08BIT=6
TMR0ON=7
C=0
DC=1
Z=2
OV=3
N=4
INT1F=0
INT2F=1
INT1E=3
INT2E=4
INT1P=6
INT2P=7
INT1IF=0
INT2IF=1
INT1IE=3
INT2IE=4
INT1IP=6
INT2IP=7
RBIP=0
TMR0IP=2
INTEDG2=4
INTEDG1=5
INTEDG0=6
RBPU=7
NOT_RBPU=7
RBIF=0
INT0F=1
TMR0IF=2
RBIE=3
INT0E=4
TMR0IE=5
PEIE=6
GIE=7
INT0IF=1
T0IF=2
INT0IE=4
T0IE=5
GIEL=6
GIEH=7
SP0=0
SP1=1
SP2=2
SP3=3
SP4=4
STKUNF=6
STKFUL=7
STKOVF=7
  __MAXRAM  0X0FFF
  __BADRAM  0X0600-0X0F7F
  __BADRAM  0X0F85-0X0F88
  __BADRAM  0X0F8E-0X0F91
  __BADRAM  0X0F97-0X0F9A
  __BADRAM  0X0F9C
  __BADRAM  0X0FA3-0X0FA5
  __BADRAM  0X0FAA
  __BADRAM  0X0FB9
  __BADRAM  0X0FD4
config1h equ 0X300001
config2l equ 0X300002
config2h equ 0X300003
config3h equ 0X300005
config4l equ 0X300006
config5l equ 0X300008
config5h equ 0X300009
config6l equ 0X30000A
config6h equ 0X30000B
config7l equ 0X30000C
config7h equ 0X30000D
OSC_LP_1 equ 0XF0
OSC_XT_1 equ 0XF1
OSC_HS_1 equ 0XF2
OSC_RC_1 equ 0XF3
OSC_EC_1 equ 0XF4
OSC_ECIO6_1 equ 0XF5
OSC_HSPLL_1 equ 0XF6
OSC_RCIO6_1 equ 0XF7
OSC_INTIO67_1 equ 0XF8
OSC_INTIO7_1 equ 0XF9
FCMEN_OFF_1 equ 0XBF
FCMEN_ON_1 equ 0XFF
IESO_OFF_1 equ 0X7F
IESO_ON_1 equ 0XFF
PWRT_ON_2 equ 0XFE
PWRT_OFF_2 equ 0XFF
BOREN_OFF_2 equ 0XF9
BOREN_ON_2 equ 0XFB
BOREN_NOSLP_2 equ 0XFD
BOREN_SBORDIS_2 equ 0XFF
BORV_0_2 equ 0XE7
BORV_1_2 equ 0XEF
BORV_2_2 equ 0XF7
BORV_3_2 equ 0XFF
WDT_OFF_2 equ 0XFE
WDT_ON_2 equ 0XFF
WDTPS_1_2 equ 0XE1
WDTPS_2_2 equ 0XE3
WDTPS_4_2 equ 0XE5
WDTPS_8_2 equ 0XE7
WDTPS_16_2 equ 0XE9
WDTPS_32_2 equ 0XEB
WDTPS_64_2 equ 0XED
WDTPS_128_2 equ 0XEF
WDTPS_256_2 equ 0XF1
WDTPS_512_2 equ 0XF3
WDTPS_1024_2 equ 0XF5
WDTPS_2048_2 equ 0XF7
WDTPS_4096_2 equ 0XF9
WDTPS_8192_2 equ 0XFB
WDTPS_16384_2 equ 0XFD
WDTPS_32768_2 equ 0XFF
MCLRE_OFF_3 equ 0X7F
MCLRE_ON_3 equ 0XFF
LPT1OSC_OFF_3 equ 0XFB
LPT1OSC_ON_3 equ 0XFF
PBADEN_OFF_3 equ 0XFD
PBADEN_ON_3 equ 0XFF
CCP2MX_PORTBE_3 equ 0XFE
CCP2MX_PORTC_3 equ 0XFF
STVREN_OFF_4 equ 0XFE
STVREN_ON_4 equ 0XFF
LVP_OFF_4 equ 0XFB
LVP_ON_4 equ 0XFF
XINST_OFF_4 equ 0XBF
XINST_ON_4 equ 0XFF
DEBUG_ON_4 equ 0X7F
DEBUG_OFF_4 equ 0XFF
CP0_ON_5 equ 0XFE
CP0_OFF_5 equ 0XFF
CP1_ON_5 equ 0XFD
CP1_OFF_5 equ 0XFF
CP2_ON_5 equ 0XFB
CP2_OFF_5 equ 0XFF
CP3_ON_5 equ 0XF7
CP3_OFF_5 equ 0XFF
CPB_ON_5 equ 0XBF
CPB_OFF_5 equ 0XFF
CPD_ON_5 equ 0X7F
CPD_OFF_5 equ 0XFF
WRT0_ON_6 equ 0XFE
WRT0_OFF_6 equ 0XFF
WRT1_ON_6 equ 0XFD
WRT1_OFF_6 equ 0XFF
WRT2_ON_6 equ 0XFB
WRT2_OFF_6 equ 0XFF
WRT3_ON_6 equ 0XF7
WRT3_OFF_6 equ 0XFF
WRTB_ON_6 equ 0XBF
WRTB_OFF_6 equ 0XFF
WRTC_ON_6 equ 0XDF
WRTC_OFF_6 equ 0XFF
WRTD_ON_6 equ 0X7F
WRTD_OFF_6 equ 0XFF
EBTR0_ON_7 equ 0XFE
EBTR0_OFF_7 equ 0XFF
EBTR1_ON_7 equ 0XFD
EBTR1_OFF_7 equ 0XFF
EBTR2_ON_7 equ 0XFB
EBTR2_OFF_7 equ 0XFF
EBTR3_ON_7 equ 0XF7
EBTR3_OFF_7 equ 0XFF
EBTRB_ON_7 equ 0XBF
EBTRB_OFF_7 equ 0XFF
DEVID1 equ 0X3FFFFE
DEVID2 equ 0X3FFFFF
IDLOC0 equ 0X200000
__IDLOC0 equ 0X200000
IDLOC1 equ 0X200001
__IDLOC1 equ 0X200001
IDLOC2 equ 0X200002
__IDLOC2 equ 0X200002
IDLOC3 equ 0X200003
__IDLOC3 equ 0X200003
IDLOC4 equ 0X200004
__IDLOC4 equ 0X200004
IDLOC5 equ 0X200005
__IDLOC5 equ 0X200005
IDLOC6 equ 0X200006
__IDLOC6 equ 0X200006
IDLOC7 equ 0X200007
__IDLOC7 equ 0X200007
#define __18F4520 1
#define XTAL 11
#define _CORE 16
#define _MAXRAM 1536
#define _RAM_END 1536
#define _MAXMEM 0X8000
#define _ADC 13
#define _ADC_RES 10
#define _EEPROM 256
#define RAM_BANKS 6
#define _USART 1
#define _USB 0
#define _USB#RAM_START 0
#define _FLASH 1
#define _CWRITE_BLOCK 32
#define BANK0_START 128
#define BANK0_END 255
#define BANK1_START 256
#define BANK1_END 511
#define BANK2_START 512
#define BANK2_END 767
#define BANK3_START 768
#define BANK3_END 1023
#define BANK4_START 1024
#define BANK4_END 1279
#define BANK5_START 1280
#define BANK5_END 1535
#define bankA_Start 0
#define bankA_End 127
#define _SYSTEM_VARIABLE_COUNT 17
ram_bank = 0
#define LCD#TYPE 0
#define __INTERRUPTS_ENABLED 1
#define __HIGH_INTERRUPTS_ENABLED 1
#define clrw clrf WREG
#define negw negf WREG
#define skpc btfss STATUS,0
#define skpnc btfsc STATUS,0
#define clrc bcf STATUS,0
#define setc bsf STATUS,0
#define skpz btfss STATUS,2
#define skpnz btfsc STATUS,2
#define clrz bcf STATUS,2
#define setz bsf STATUS,2
MOVFW macro pVarin
    movf pVarin,W
    endm
rlf macro pVarin,pDestination
    rlcf pVarin,pDestination
    endm
rrf macro pVarin,pDestination
    rrcf pVarin,pDestination
    endm
jump macro pLabel
    goto pLabel
    endm
f@call macro pDestination
if (pDestination < 1)
    call pDestination
else
if (pDestination > $)
    call pDestination
else
if (pDestination < ($ - 0X03FF))
    call pDestination
else
    rcall pDestination
endif
endif
endif
    endm
f@jump macro pDestination
ifdef watchdog_req
if ($ == pDestination)
    clrwdt
endif
endif
if (pDestination < 1)
    goto pDestination
else
if ((pDestination) > $)
    goto pDestination
else
if ((pDestination) < ($ - 0X03FF))
    goto pDestination
else
    bra pDestination
endif
endif
endif
    endm
ifdef watchdog_req
    chk@slf macro pDestination
if ($ == pDestination)
    clrwdt
endif
    endm
endif
g@oto macro pDestination
if (pDestination < 1)
    btfsc STATUS,OV
    goto pDestination
else
if (pDestination > $)
    btfsc STATUS,OV
    goto pDestination
else
if (pDestination < ($ - 127))
    btfsc STATUS,OV
    goto pDestination
else
    bov pDestination
endif
endif
endif
    endm
go@to macro pDestination
if (pDestination < 1)
    goto pDestination
else
if (pDestination > $)
    goto pDestination
else
if (pDestination < ($ - 0X03FF))
    goto pDestination
else
    bra pDestination
endif
endif
endif
    endm
s@b macro pVarin
if ((pVarin > bankA_End) & (pVarin < 0X0F80))
if ((pVarin & 0X0F00) != (ram_bank << 8))
    movlb high (pVarin)
    ram_bank = (pVarin >> 8)
endif
endif
    endm
r@b macro
if(ram_bank != 0)
    movlb 0
    ram_bank = 0
endif
    endm
wreg_byte macro pByteOut
    movff WREG,pByteOut
    endm
wreg_bit macro pVarOut,pBitout
    s@b pVarOut
    btfsc WREG,0
    bsf pVarOut,pBitout
    btfss WREG,0
    bcf pVarOut,pBitout
    r@b
    endm
wreg_word macro pWordOut
    movff WREG,pWordOut
    movlw 0
    movff WREG,pWordOut+1
    endm
wreg_dword macro pDwordOut
    movff WREG,pDwordOut
    movlw 0
    movff WREG,pDwordOut+3
    movff WREG,pDwordOut+2
    movff WREG,pDwordOut+1
    endm
num_SFR macro pNumIn,pSFROut
    movlw pNumIn
    movwf pSFROut
    endm
NUM16_SFR macro pNumIn,pSFROut
    movlw (pNumIn & 255)
    movwf pSFROut
    movlw ((pNumIn >> 8) & 255)
    movwf pSFROut + 1
    endm
byte_wreg macro pByteIn
    movff pByteIn,WREG
    endm
num_wreg macro pNumIn
    movlw (pNumIn & 255)
    endm
num_byte macro pNumIn,pByteOut
    movlw (pNumIn & 255)
    movff WREG,pByteOut
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
ifdef _USELFSR
if(pWordOut == FSR0L)
    lfsr 0,pNumIn
    exitm
endif
if(pWordOut == FSR1L)
    lfsr 1,pNumIn
    exitm
endif
if(pWordOut == FSR2L)
    lfsr 2,pNumIn
    exitm
endif
endif
    s@b pWordOut
    movlw (pNumIn & 255)
    movwf pWordOut
    s@b pWordOut+1
    movlw high (pNumIn)
    movwf pWordOut+1
    r@b
    endm
num_dword macro pNumIn,pDwordOut
    s@b pDwordOut
    movlw low (pNumIn)
    movwf pDwordOut
    s@b pDwordOut+1
    movlw high (pNumIn)
    movwf pDwordOut+1
    s@b pDwordOut+2
    movlw ((pNumIn >> 16) & 255)
    movwf pDwordOut+2
    s@b pDwordOut+3
    movlw ((pNumIn >> 24) & 255)
    movwf pDwordOut+3
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
if ((pVarin & 0X0F00) == (pVarOut & 0X0F00))
    s@b pVarin
    btfsc pVarin,pBitIn
    bsf pVarOut,pBitout
    btfss pVarin,pBitIn
    bcf pVarOut,pBitout
else
if ((pVarin <= bankA_End) | (pVarin >= 0X0F80))
    s@b pVarOut
    btfsc pVarin,pBitIn
    bsf pVarOut,pBitout
    btfss pVarin,pBitIn
    bcf pVarOut,pBitout
else
if ((pVarOut <= bankA_End) | (pVarOut >= 0X0F80))
    s@b pVarin
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
endif
endif
    r@b
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
    movff pWordIn+1,pWordOut+1
    movff pWordIn,pWordOut
    endm
word_dword macro pWordIn,pDwordOut
    movlw 0
    movff WREG,pDwordOut+3
    movff WREG,pDwordOut+2
    word_word pWordIn,pDwordOut
    endm
byte_byte macro pByteIn,pByteOut
    movff pByteIn,pByteOut
    endm
byte_word macro pByteIn,pWordOut
    movlw 0
    movff WREG,pWordOut+1
    byte_byte pByteIn,pWordOut
    endm
byte_dword macro pByteIn,pDwordOut
    movlw 0
    movff WREG,pDwordOut+3
    movff WREG,pDwordOut+2
    movff WREG,pDwordOut+1
    byte_byte pByteIn,pDwordOut
    endm
byte_bit macro pByteIn,pVarOut,pBitout
if ((pByteIn & 0X0F00) == (pVarOut & 0X0F00))
    s@b pByteIn
    btfsc pByteIn,0
    bsf pVarOut,pBitout
    btfss pByteIn,0
    bcf pVarOut,pBitout
else
if ((pByteIn <= bankA_End) | (pByteIn >= 0X0F80))
    s@b pVarOut
    btfsc pByteIn,0
    bsf pVarOut,pBitout
    btfss pByteIn,0
    bcf pVarOut,pBitout
else
if ((pVarOut <= bankA_End) | (pVarOut >= 0X0F80))
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
endif
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
    movff pDwordIn+1,pWordOut+1
    movff pDwordIn,pWordOut
    endm
dword_dword macro pDwordIn,pDwordOut
    movff pDwordIn+3,pDwordOut+3
    movff pDwordIn+2,pDwordOut+2
    movff pDwordIn+1,pDwordOut+1
    movff pDwordIn,pDwordOut
    endm
dword_bit macro pDwordIn,pVarOut,pBitout
    byte_bit pDwordIn,pVarOut,pBitout
    endm
num_float macro pNumIn,pFloatOut
    num_byte pNumIn,pFloatOut+3
    num_byte ((pNumIn >> 8) & 255),pFloatOut+2
    num_byte ((pNumIn >> 16) & 255),pFloatOut+1
    num_byte ((pNumIn >> 24) & 255),pFloatOut
    endm
wreg_float macro pFloatOut
    call INT08@TOFL32
    movff PP_AARG,pFloatOut
    movff PP_AARGH,pFloatOut+1
    movff PP_AARGHH,pFloatOut+2
    movff PP_AARGHHH,pFloatOut+3
    endm
bit_float macro pVarin,pBitIn,pFloatOut
    bit_wreg pVarin,pBitIn
    call INT08@TOFL32
    movff PP_AARG,pFloatOut
    movff PP_AARGH,pFloatOut+1
    movff PP_AARGHH,pFloatOut+2
    movff PP_AARGHHH,pFloatOut+3
    endm
byte_float macro pByteIn,pFloatOut
    byte_wreg pByteIn
    call INT08@TOFL32
    movff PP_AARG,pFloatOut
    movff PP_AARGH,pFloatOut+1
    movff PP_AARGHH,pFloatOut+2
    movff PP_AARGHHH,pFloatOut+3
    endm
word_float macro pWordIn,pFloatOut
    byte_byte pWordIn,PP_AARG
    byte_byte pWordIn+1,PP_AARGH
    call INT16@TOFL32
    movff PP_AARG,pFloatOut
    movff PP_AARGH,pFloatOut+1
    movff PP_AARGHH,pFloatOut+2
    movff PP_AARGHHH,pFloatOut+3
    endm
dword_float macro pDwordIn,pFloatOut
    movff pDwordIn,PP_AARG
    movff pDwordIn+1,PP_AARGH
    movff pDwordIn+2,PP_AARGHH
    movff pDwordIn+3,PP_AARGHHH
    call INT32@TOFL32
    movff PP_AARG,pFloatOut
    movff PP_AARGH,pFloatOut+1
    movff PP_AARGHH,pFloatOut+2
    movff PP_AARGHHH,pFloatOut+3
    endm
float_float macro pFloatIn,pFloatOut
    movff pFloatIn,pFloatOut
    movff pFloatIn+1,pFloatOut+1
    movff pFloatIn+2,pFloatOut+2
    movff pFloatIn+3,pFloatOut+3
    endm
float_wreg macro pFloatIn
    float_float pFloatIn,PP_AARG
    call FL32@TOINT32
    endm
float_bit macro pFloatIn,pVarOut,pBitout
    float_float pFloatIn,PP_AARG
    call FL32@TOINT32
    wreg_bit pVarOut,pBitout
    endm
float_byte macro pFloatIn,pByteOut
    float_float pFloatIn,PP_AARG
    call FL32@TOINT32
    wreg_byte pByteOut
    endm
float_word macro pFloatIn,pWordOut
    float_float pFloatIn,PP_AARG
    call FL32@TOINT32
    movff PP_AARGHHH,pWordOut
    movff PP_AARGHH,pWordOut+1
    endm
float_dword macro pFloatIn,pDwordOut
    float_float pFloatIn,PP_AARG
    call FL32@TOINT32
    movff PP_AARGHHH,pDwordOut
    movff PP_AARGHH,pDwordOut+1
    movff PP_AARGH,pDwordOut+2
    movff PP_AARG,pDwordOut+3
    endm
num_FSR0 macro pNumIn
    lfsr 0,pNumIn
    endm
num_FSR1 macro pNumIn
    lfsr 1,pNumIn
    endm
num_FSR2 macro pNumIn
    lfsr 2,pNumIn
    endm
label_word macro pLabelIn,pWordOut
    movlw (pLabelIn & 255)
    movff WREG, pWordOut
    movlw ((pLabelIn >> 8) & 255)
    movff WREG, pWordOut+1
    endm
label_pointer macro pLabelIn
    movlw (pLabelIn & 255)
    movwf TBLPTRL
    movlw ((pLabelIn >> 8) & 255)
    movwf TBLPTRH
    movlw ((pLabelIn >> 16) & 255)
    movwf TBLPTRU
    endm
wreg_sword macro pWordOut
    movff WREG,pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    btfsc WREG,7
    decf pWordOut+1,F
    r@b
    endm
wreg_sdword macro pDwordOut
    movff WREG,pDwordOut
    s@b pDwordOut
    movlw 0
    btfsc pDwordOut,7
    movlw 255
    movff WREG,pDwordOut+1
    movff WREG,pDwordOut+2
    movff WREG,pDwordOut+3
    r@b
    endm
byte_sword macro pByteIn,pWordOut
    movff pByteIn,pWordOut
    s@b pByteIn
    movlw 0
    btfsc pByteIn,7
    movlw 255
    movff WREG,pWordOut+1
    r@b
    endm
byte_sdword macro pByteIn,pDwordOut
    movff pByteIn,pDwordOut
    s@b pByteIn
    movlw 0
    btfsc pByteIn,7
    movlw 255
    movff WREG,pDwordOut+1
    movff WREG,pDwordOut+2
    movff WREG,pDwordOut+3
    r@b
    endm
word_sdword macro pWordIn,pDwordOut
    movff pWordIn,pDwordOut
    movff pWordIn+1,pDwordOut+1
    s@b pWordIn+1
    movlw 0
    btfsc pWordIn+1,7
    movlw 255
    movff WREG,pDwordOut+2
    movff WREG,pDwordOut+3
    r@b
    endm
BPF = 0
BPFH = 1
GEN4 = 2
GEN4H = 3
PBL#VAR0 = 4
PBP#VAR0 = 5
PBP#VAR0H = 6
PP0 = 7
PP0H = 8
PP1 = 9
PP1H = 10
PP2 = 11
PP2H = 12
PP4 = 13
PP7 = 14
PP7H = 15
SP#P9 = 16
RXdata = 17
variable RXdata#0=17,RXdata#1=18,RXdata#2=19,RXdata#3=20
variable RXdata#4=21,RXdata#5=22,RXdata#6=23,RXdata#7=24
variable RXdata#8=25,RXdata#9=26,RXdata#10=27,RXdata#11=28
variable RXdata#12=29,RXdata#13=30,RXdata#14=31,RXdata#15=32
variable RXdata#16=33,RXdata#17=34,RXdata#18=35,RXdata#19=36
RXbyte = 37
RXcnt = 38
RXend = 39
Addr = 40
Cmd = 41
TXdata = 42
variable TXdata#0=42,TXdata#1=43,TXdata#2=44,TXdata#3=45
variable TXdata#4=46,TXdata#5=47,TXdata#6=48,TXdata#7=49
variable TXdata#8=50,TXdata#9=51,TXdata#10=52,TXdata#11=53
variable TXdata#12=54,TXdata#13=55,TXdata#14=56,TXdata#15=57
variable TXdata#16=58,TXdata#17=59,TXdata#18=60,TXdata#19=61
TXcnt = 62
BattLevel = 63
Sense = 64
Time = 65
TimeH = 66
TimeHH = 67
TimeHHH = 68
_B#VR1 = 69
calcCRC = 70
calcCRCH = 71
bitcount = 72
bytecount = 73
loopCount = 74
_High__Context_Store = 75
variable _High__Context_Store#0=75,_High__Context_Store#1=76,_High__Context_Store#2=77,_High__Context_Store#3=78
#define TMR1value TMR1L
#define TMR1valueH TMR1LH
#define CRC _B#VR1,0
#define __OPTIMISER_LEVEL 0
#define __XTAL 11
#define __HSERIAL_BAUD 9600
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 172
#define TMR1_Preload 51793
#define TMR1_PreloadH 202
#define NodeAddr 66
#define NodeGrp 64
HSERIAL_SPBRG = 71
HSERIAL_TXSTA = 172
HSERIAL_RCSTA = 144
HSERIAL_BAUD = 9600
proton#code#start
        org 0
        goto proton#main#start
        org 8
        goto inthandler
OUT@HEX
        bcf 0,3,0
        movf 3,W,0
        btfsc 4056,2,0
        bsf 0,3,0
        movlw 4
        movwf 2,0
        swapf 12,W,0
        rcall H@DIG
        movf 12,W,0
        rcall H@DIG
        swapf 11,W,0
        rcall H@DIG
        movf 11,W,0
H@DIG
        andlw 15
        addlw 246
        btfsc 4056,0,0
        addlw 7
        addlw 10
        bra SEND@IT
SEND@IT
        movwf 7,0
        dcfsnz 2,F,0
        bcf 0,3,0
        movf 3,W,0
        bz $ + 8
        subwf 2,W,0
        btfsc 4056,0,0
        bra EX@SEND@IT
        movf 7,W,0
        btfss 4056,2,0
        bcf 0,3,0
        btfsc 0,3,0
        bra EX@SEND@IT
        addlw 48
        goto _BYTE__SEND_
EX@SEND@IT
        return
HRSOUT@MSTR
        clrf EECON1,0
        bsf EECON1,PP_EEPGD,0
HRSOUT@MSTRLP1
        tblrd*+
        movf 4085,W,0
        bz HRSOUT@MSTR@RET
        rcall HRSOUT
        bra HRSOUT@MSTRLP1
HRSOUT@MSTR@RET
        return
HRSOUT
        clrwdt
        btfss PIR1,PP_TXIF,0
        bra $ - 2
        movwf TXREG,0
        return
_BYTE__SEND_
        btfsc 1,2,0
        goto HRSOUT
__DELAY_MS_
        clrf 10,0
__DELAY_MS_W_
        movwf 9,0
DLY@P
        movlw 255
        addwf 9,F,0
        addwfc 10,F,0
        bra $ + 2
        btfss 4056,0,0
        return
        movlw 3
        movwf 8,0
        movlw 228
        rcall __DELAY_US_W_
        bra DLY@P
__DELAY_US_
        clrf 8,0
__DELAY_US_W_
        addlw 245
        movwf 7,0
        comf 8,F,0
        btfss 4056,0,0
        bra DL@H
DLUS@LP0
        movlw 254
DLUS@LP
        bra $ + 2
        addwf 7,F,0
        btfsc 4056,0,0
        bra DLUS@LP
        addwf 7,F,0
DL@H
        clrwdt
        clrwdt
        incfsz 8,F,0
        bra DLUS@LP0
        bra $ + 2
        btfss 7,0,0
        bra DLUS@RT
        bra $ + 2
        bra $ + 2
DLUS@RT
        return
STR@LB1
        db 78,111,100,101,32,79,110,0
STR@LB2
        db 71,108,111,98,97,108,32,66,114,111,97,100,99,97,115,116,46,46,46,0
STR@LB3
        db 80,114,105,118,97,116,101,32,77,101,115,115,97,103,101,46,46,46,0
STR@LB4
        db 71,114,111,117,112,32,66,114,111,97,100,99,97,115,116,46,46,46,0
STR@LB5
        db 68,101,99,67,109,100,32,0
STR@LB6
        db 66,97,116,116,101,114,121,0
STR@LB7
        db 83,97,103,108,105,107,32,115,111,114,117,108,100,117,32,58,0
STR@LB8
        db 70,97,107,101,32,65,108,97,114,109,32,73,115,116,101,110,100,105,32,58,0
STR@LB9
        db 83,101,116,32,83,101,110,115,105,116,105,118,105,116,121,32,58,0
STR@LB10
        db 84,105,109,101,32,83,101,116,32,58,0
STR@LB11
        db 67,82,67,32,79,75,46,46,46,0
proton#main#start
        clrf 0,0
        movlw 71
        movwf SPBRG,0
        movlw 172
        movwf TXSTA,0
        movlw 144
        movwf RCSTA,0
        movlb 0
F2_SOF equ $ ; DORJI.PRP
F2_EOF equ $ ; DORJI.PRP
F1_SOF equ $ ; DORJI.BAS
F1_000073 equ $ ; IN [DORJI.BAS] CLEAR
        lfsr 0,1536
        clrf POSTDEC0,0
        movf FSR0L,W,0
        iorwf FSR0H,W,0
        bnz $ - 6
        clrf INDF0,0
F1_000075 equ $ ; IN [DORJI.BAS] TRISA = %0100000
        movlw 32
        movwf TRISA,0
F1_000077 equ $ ; IN [DORJI.BAS] ADCON0 = %010001
        movlw 17
        movwf ADCON0,0
F1_000078 equ $ ; IN [DORJI.BAS] ADCON1 = %001010
        movlw 10
        movwf ADCON1,0
F1_000079 equ $ ; IN [DORJI.BAS] ADCON2.7 = 1
        bsf ADCON2,7,0
F1_000082 equ $ ; IN [DORJI.BAS] TRISB = %11110000
        movlw 240
        movwf TRISB,0
F1_000085 equ $ ; IN [DORJI.BAS] TRISC = %10010000
        movlw 144
        movwf TRISC,0
F1_000088 equ $ ; IN [DORJI.BAS] TRISD = %00001000
        movlw 8
        movwf TRISD,0
F1_000091 equ $ ; IN [DORJI.BAS] TRISE = %100
        movlw 4
        movwf TRISE,0
F1_000093 equ $ ; IN [DORJI.BAS] INTCON2.7 = 0
        bcf INTCON2,7,0
F1_000094 equ $ ; IN [DORJI.BAS] LOW PORTB.1
        bcf TRISB,1,0
        bcf LATB,1,0
Start
F1_000098 equ $ ; IN [DORJI.BAS] TMR1VALUE = TMR1_PRELOAD
        movlw 202
        movwf TMR1LH,0
        movlw 81
        movwf TMR1L,0
F1_000099 equ $ ; IN [DORJI.BAS] T1CON = %00000000
        clrf T1CON,0
F1_000100 equ $ ; IN [DORJI.BAS] PIR1.0 = 0
        bcf PIR1,0,0
F1_000101 equ $ ; IN [DORJI.BAS] PIE1.0 = 1
        bsf PIE1,0,0
F1_000102 equ $ ; IN [DORJI.BAS] PIE1.5 = 1
        bsf PIE1,5,0
F1_000103 equ $ ; IN [DORJI.BAS] IPR1.5 = 1
        bsf IPR1,5,0
F1_000104 equ $ ; IN [DORJI.BAS] T1CON.0 = 1
        bsf T1CON,0,0
F1_000105 equ $ ; IN [DORJI.BAS] INTCON = %11000000
        movlw 192
        movwf INTCON,0
F1_000126 equ $ ; IN [DORJI.BAS] RXCNT = 0
        clrf RXcnt,0
F1_000127 equ $ ; IN [DORJI.BAS] RXEND = 0
        clrf RXend,0
F1_000128 equ $ ; IN [DORJI.BAS] CRC   = 0
        bcf _B#VR1,0,0
F1_000129 equ $ ; IN [DORJI.BAS] BATTLEVEL = 61
        movlw 61
        movwf BattLevel,0
F1_000130 equ $ ; IN [DORJI.BAS] SENSE     = 45
        movlw 45
        movwf Sense,0
F1_000131 equ $ ; IN [DORJI.BAS] TIME      = 66987
        clrf TimeHHH,0
        movlw 1
        movwf TimeHH,0
        movlw 5
        movwf TimeH,0
        movlw 171
        movwf Time,0
F1_000146 equ $ ; IN [DORJI.BAS] GOTO INIT
        f@jump Init
inthandler
F1_000152 equ $ ; IN [DORJI.BAS] CONTEXT SAVE
        movlb 0
        movff FSR0H,_High__Context_Store#0
        movff FSR0L,_High__Context_Store#1
        movff PBP#VAR0,_High__Context_Store#2
        movff SP#P9,_High__Context_Store#3
F1_000153 equ $ ; IN [DORJI.BAS] TMR1VALUE = TMR1VALUE + 10000
        movlw 16
        addwf TMR1L,F,0
        movlw 39
        addwfc TMR1LH,F,0
F1_000155 equ $ ; IN [DORJI.BAS] IF PIR1.0 = 1 THEN
        btfss PIR1,0,0
        go@to BC@LL3
F1_000156 equ $ ; IN [DORJI.BAS] TOGGLE PORTB.6
        btg PORTB,6,0
        bcf TRISB,6,0
F1_000157 equ $ ; IN [DORJI.BAS] CLEAR PIR1.0
        bcf PIR1,0,0
F1_000158 equ $ ; IN [DORJI.BAS] ENDIF
BC@LL3
F1_000160 equ $ ; IN [DORJI.BAS] IF PIR1.4 = 1 THEN
        btfss PIR1,4,0
        go@to BC@LL5
F1_000161 equ $ ; IN [DORJI.BAS] TOGGLE PORTB.4
        btg PORTB,4,0
        bcf TRISB,4,0
F1_000162 equ $ ; IN [DORJI.BAS] CLEAR PIE1.4
        bcf PIE1,4,0
F1_000163 equ $ ; IN [DORJI.BAS] CLEAR PIR1.4
        bcf PIR1,4,0
F1_000164 equ $ ; IN [DORJI.BAS] ENDIF
BC@LL5
F1_000166 equ $ ; IN [DORJI.BAS] IF PIR1.5 = 1 THEN
        btfss PIR1,5,0
        go@to BC@LL7
F1_000167 equ $ ; IN [DORJI.BAS] TOGGLE PORTB.5
        btg PORTB,5,0
        bcf TRISB,5,0
F1_000168 equ $ ; IN [DORJI.BAS] RXBYTE = RCREG
        movff RCREG,RXbyte
F1_000169 equ $ ; IN [DORJI.BAS] IF RXBYTE = 13 AND RXDATA[0] = "#" THEN RXEND = 1
        movlw 13
        subwf RXbyte,W,0
        movlw 1
        btfss STATUS,2,0
        movlw 0
        movwf SP#P9,0
        movf RXdata#0,W,0
        movwf PBP#VAR0,0
        movlw 35
        subwf PBP#VAR0,W,0
        movlw 1
        btfss STATUS,2,0
        movlw 0
        andwf SP#P9,F,0
        btfsc STATUS,2,0
        go@to BC@LL9
        movlw 1
        movwf RXend,0
BC@LL9
F1_000170 equ $ ; IN [DORJI.BAS] IF RXBYTE = "#" THEN RXCNT = 0
        movlw 35
        cpfseq RXbyte,0
        f@jump BC@LL11
        clrf RXcnt,0
BC@LL11
F1_000171 equ $ ; IN [DORJI.BAS] RXDATA[RXCNT] = RXBYTE
        lfsr 0,RXdata
        movf RXcnt,W,0
        movff RXbyte,PLUSW0
F1_000172 equ $ ; IN [DORJI.BAS] RXCNT = RXCNT + 1
        incf RXcnt,F,0
F1_000173 equ $ ; IN [DORJI.BAS] SET PIE1.4
        bsf PIE1,4,0
F1_000174 equ $ ; IN [DORJI.BAS] CLEAR PIR1.5
        bcf PIR1,5,0
F1_000175 equ $ ; IN [DORJI.BAS] ENDIF
BC@LL7
F1_000177 equ $ ; IN [DORJI.BAS] CONTEXT RESTORE
        movff _High__Context_Store#0,FSR0H
        movff _High__Context_Store#1,FSR0L
        movff _High__Context_Store#2,PBP#VAR0
        movff _High__Context_Store#3,SP#P9
        retfie 1
Init
F1_000185 equ $ ; IN [DORJI.BAS] DELAYMS 100
        movlw 100
        f@call __DELAY_MS_
F1_000186 equ $ ; IN [DORJI.BAS] HIGH PORTD.2
        bcf TRISD,2,0
        bsf LATD,2,0
F1_000188 equ $ ; IN [DORJI.BAS] HIGH PORTD.3
        bcf TRISD,3,0
        bsf LATD,3,0
F1_000189 equ $ ; IN [DORJI.BAS] HIGH PORTD.4
        bcf TRISD,4,0
        bsf LATD,4,0
F1_000191 equ $ ; IN [DORJI.BAS] HIGH PORTB.2
        bcf TRISB,2,0
        bsf LATB,2,0
F1_000192 equ $ ; IN [DORJI.BAS] LOW  PORTB.1
        bcf TRISB,1,0
        bcf LATB,1,0
F1_000196 equ $ ; IN [DORJI.BAS] HSEROUT["NODE ON",13,10]
        movlw ((STR@LB1 >> 8) & 255)
        movwf TBLPTRLH,0
        movlw (STR@LB1 & 255)
        movwf TBLPTRL,0
        f@call HRSOUT@MSTR
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000197 equ $ ; IN [DORJI.BAS] DELAYMS 100
        movlw 100
        f@call __DELAY_MS_
Main
F1_000200 equ $ ; IN [DORJI.BAS] CLRWDT
        clrwdt
F1_000202 equ $ ; IN [DORJI.BAS] IF RXEND = 1 THEN GOTO DECODEDATA
        movlw 1
        subwf RXend,W,0
        btfsc STATUS,2,0
        go@to DecodeData
F1_000203 equ $ ; IN [DORJI.BAS] GOTO MAIN
        f@jump Main
DecodeData
F1_000210 equ $ ; IN [DORJI.BAS] TXDATA = RXDATA
        lfsr 0,42
        lfsr 1,RXdata
        movlw 20
        movff POSTINC1,POSTINC0
        decfsz WREG,F,0
        bra $ - 6
F1_000211 equ $ ; IN [DORJI.BAS] FOR LOOPCOUNT = 0 TO RXCNT - 1
        decf RXcnt,W,0
        movwf PBL#VAR0,0
        clrf loopCount,0
FR@LB14
        movf loopCount,W,0
        subwf PBL#VAR0,W,0
        btfss STATUS,0,0
        go@to NX@LB15
F1_000212 equ $ ; IN [DORJI.BAS] HSEROUT[RXDATA[LOOPCOUNT]]
        lfsr 0,RXdata
        movf loopCount,W,0
        movf PLUSW0,W,0
        f@call HRSOUT
CT@LB16
F1_000213 equ $ ; IN [DORJI.BAS] NEXT LOOPCOUNT
        incf loopCount,F,0
        btfss STATUS,0,0
        go@to FR@LB14
NX@LB15
F1_000215 equ $ ; IN [DORJI.BAS] RXEND = 0
        clrf RXend,0
F1_000216 equ $ ; IN [DORJI.BAS] IF RXDATA[0] != "#" THEN GOTO MAIN
        movf RXdata#0,W,0
        movwf PBP#VAR0,0
        movlw 35
        cpfseq PBP#VAR0,0
        f@jump Main
F1_000217 equ $ ; IN [DORJI.BAS] RXDATA[0] =0
        clrf RXdata#0,0
F1_000218 equ $ ; IN [DORJI.BAS] GOSUB CRCCHECK
        f@call CrcCheck
F1_000219 equ $ ; IN [DORJI.BAS] IF CRC != 1 THEN GOTO MAIN
        btfss _B#VR1,0,0
        go@to Main
F1_000220 equ $ ; IN [DORJI.BAS] ADDR = RXDATA[1]
        movf RXdata#1,W,0
        movwf Addr,0
F1_000221 equ $ ; IN [DORJI.BAS] IF ADDR = 0 THEN GOTO GLOBALBROADCAST
        movf Addr,F,0
        btfsc STATUS,2,0
        go@to GlobalBroadcast
F1_000222 equ $ ; IN [DORJI.BAS] IF ADDR = NODEADDR THEN GOTO PRIVATEMESSAGE
        movlw 66
        subwf Addr,W,0
        btfsc STATUS,2,0
        go@to PrivateMessage
F1_000223 equ $ ; IN [DORJI.BAS] IF (ADDR & %00111111) = 0 THEN
        movlw 63
        andwf Addr,W,0
        clrf PBP#VAR0H,0
        movwf PBP#VAR0,0
        movf PBP#VAR0H,W,0
        iorwf PBP#VAR0,W,0
        btfss STATUS,2,0
        go@to BC@LL26
F1_000224 equ $ ; IN [DORJI.BAS] IF (ADDR & %11000000) = NODEGRP THEN GOTO GROUPBROADCAST
        movlw 192
        andwf Addr,W,0
        clrf PBP#VAR0H,0
        movwf PBP#VAR0,0
        movf PBP#VAR0,W,0
        xorlw 64
        iorwf PBP#VAR0H,W,0
        btfsc STATUS,2,0
        go@to GroupBroadcast
F1_000225 equ $ ; IN [DORJI.BAS] ENDIF
BC@LL26
F1_000226 equ $ ; IN [DORJI.BAS] GOTO MAIN
        f@jump Main
GlobalBroadcast
F1_000229 equ $ ; IN [DORJI.BAS] HSEROUT["GLOBAL BROADCAST...",13]
        movlw ((STR@LB2 >> 8) & 255)
        movwf TBLPTRLH,0
        movlw (STR@LB2 & 255)
        movwf TBLPTRL,0
        f@call HRSOUT@MSTR
        movlw 13
        f@call HRSOUT
F1_000230 equ $ ; IN [DORJI.BAS] GOTO DECODECMD
        f@jump DecodeCmd
PrivateMessage
F1_000232 equ $ ; IN [DORJI.BAS] HSEROUT["PRIVATE MESSAGE...",13]
        movlw ((STR@LB3 >> 8) & 255)
        movwf TBLPTRLH,0
        movlw (STR@LB3 & 255)
        movwf TBLPTRL,0
        f@call HRSOUT@MSTR
        movlw 13
        f@call HRSOUT
F1_000233 equ $ ; IN [DORJI.BAS] GOTO DECODECMD
        f@jump DecodeCmd
GroupBroadcast
F1_000235 equ $ ; IN [DORJI.BAS] HSEROUT["GROUP BROADCAST...",13]
        movlw ((STR@LB4 >> 8) & 255)
        movwf TBLPTRLH,0
        movlw (STR@LB4 & 255)
        movwf TBLPTRL,0
        f@call HRSOUT@MSTR
        movlw 13
        f@call HRSOUT
F1_000236 equ $ ; IN [DORJI.BAS] GOTO DECODECMD
        f@jump DecodeCmd
DecodeCmd
F1_000239 equ $ ; IN [DORJI.BAS] HSEROUT["DECCMD "]
        movlw ((STR@LB5 >> 8) & 255)
        movwf TBLPTRLH,0
        movlw (STR@LB5 & 255)
        movwf TBLPTRL,0
        f@call HRSOUT@MSTR
F1_000240 equ $ ; IN [DORJI.BAS] CMD = RXDATA[2]
        movf RXdata#2,W,0
        movwf Cmd,0
F1_000247 equ $ ; IN [DORJI.BAS] IF CMD = "B" THEN HSEROUT["BATTERY"]
        movlw 66
        cpfseq Cmd,0
        f@jump BC@LL30
        movlw ((STR@LB6 >> 8) & 255)
        movwf TBLPTRLH,0
        movlw (STR@LB6 & 255)
        movwf TBLPTRL,0
        f@call HRSOUT@MSTR
BC@LL30
F1_000248 equ $ ; IN [DORJI.BAS] IF CMD = "H" THEN HSEROUT["SAGLIK SORULDU :"]
        movlw 72
        cpfseq Cmd,0
        f@jump BC@LL32
        movlw ((STR@LB7 >> 8) & 255)
        movwf TBLPTRLH,0
        movlw (STR@LB7 & 255)
        movwf TBLPTRL,0
        f@call HRSOUT@MSTR
BC@LL32
F1_000249 equ $ ; IN [DORJI.BAS] IF CMD = "F" THEN HSEROUT["FAKE ALARM ISTENDI :"]
        movlw 70
        cpfseq Cmd,0
        f@jump BC@LL34
        movlw ((STR@LB8 >> 8) & 255)
        movwf TBLPTRLH,0
        movlw (STR@LB8 & 255)
        movwf TBLPTRL,0
        f@call HRSOUT@MSTR
BC@LL34
F1_000250 equ $ ; IN [DORJI.BAS] IF CMD = "S" THEN HSEROUT["SET SENSITIVITY :"]
        movlw 83
        cpfseq Cmd,0
        f@jump BC@LL36
        movlw ((STR@LB9 >> 8) & 255)
        movwf TBLPTRLH,0
        movlw (STR@LB9 & 255)
        movwf TBLPTRL,0
        f@call HRSOUT@MSTR
BC@LL36
F1_000251 equ $ ; IN [DORJI.BAS] IF CMD = "T" THEN HSEROUT["TIME SET :"]
        movlw 84
        cpfseq Cmd,0
        f@jump BC@LL38
        movlw ((STR@LB10 >> 8) & 255)
        movwf TBLPTRLH,0
        movlw (STR@LB10 & 255)
        movwf TBLPTRL,0
        f@call HRSOUT@MSTR
BC@LL38
F1_000255 equ $ ; IN [DORJI.BAS] TXCNT= RXCNT
        movff RXcnt,TXcnt
F1_000256 equ $ ; IN [DORJI.BAS] RXCNT = 0
        clrf RXcnt,0
F1_000257 equ $ ; IN [DORJI.BAS] GOSUB CALCTXCRC
        f@call CalcTxCRC
F1_000258 equ $ ; IN [DORJI.BAS] HSEROUT[HEX CALCCRC]
        movlw 4
        movwf BPFH,0
        clrf GEN4H,0
        movff calcCRCH,PP2H
        movff calcCRC,PP2
        f@call OUT@HEX
F1_000259 equ $ ; IN [DORJI.BAS] GOTO MAIN
        f@jump Main
CrcCheck
F1_000267 equ $ ; IN [DORJI.BAS] CRC = 0
        bcf _B#VR1,0,0
F1_000270 equ $ ; IN [DORJI.BAS] HSEROUT["CRC OK...",13,10]
        movlw ((STR@LB11 >> 8) & 255)
        movwf TBLPTRLH,0
        movlw (STR@LB11 & 255)
        movwf TBLPTRL,0
        f@call HRSOUT@MSTR
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000271 equ $ ; IN [DORJI.BAS] CRC = 1
        bsf _B#VR1,0,0
F1_000272 equ $ ; IN [DORJI.BAS] RETURN
        return 0
CalcTxCRC
F1_000277 equ $ ; IN [DORJI.BAS] CALCCRC = $FFFF
        setf calcCRCH,0
        setf calcCRC,0
F1_000278 equ $ ; IN [DORJI.BAS] FOR BYTECOUNT = 0 TO TXCNT-2
        movlw 2
        subwf TXcnt,W,0
        movwf PBL#VAR0,0
        clrf bytecount,0
FR@LB39
        movf bytecount,W,0
        subwf PBL#VAR0,W,0
        btfss STATUS,0,0
        go@to NX@LB40
F1_000279 equ $ ; IN [DORJI.BAS] CALCCRC = CALCCRC ^ TXDATA[BYTECOUNT]
        lfsr 0,TXdata
        movf bytecount,W,0
        movf PLUSW0,W,0
        movwf PBP#VAR0,0
        movf PBP#VAR0,W,0
        xorwf calcCRC,F,0
F1_000280 equ $ ; IN [DORJI.BAS] FOR BITCOUNT=1 TO 8
        movlw 1
        movwf bitcount,0
FR@LB42
        movlw 9
        cpfslt bitcount,0
        f@jump NX@LB43
F1_000281 equ $ ; IN [DORJI.BAS] IF CALCCRC.0 = 1 THEN
        btfss calcCRC,0,0
        go@to BC@LL46
F1_000282 equ $ ; IN [DORJI.BAS] CALCCRC = $A001 ^ (CALCCRC >> 1)
        bcf STATUS,0,0
        rrcf calcCRCH,W,0
        movwf PP7H,0
        rrcf calcCRC,W,0
        movwf PP7,0
        movlw 1
        xorwf PP7,W,0
        movwf calcCRC,0
        movlw 160
        xorwf PP7H,W,0
        movwf calcCRCH,0
        f@jump BC@LL47
BC@LL46
F1_000283 equ $ ; IN [DORJI.BAS] ELSE
F1_000284 equ $ ; IN [DORJI.BAS] CALCCRC = CALCCRC >> 1
        bcf STATUS,0,0
        rrcf calcCRCH,F,0
        rrcf calcCRC,F,0
F1_000285 equ $ ; IN [DORJI.BAS] ENDIF
BC@LL47
CT@LB44
F1_000286 equ $ ; IN [DORJI.BAS] NEXT BITCOUNT
        incf bitcount,F,0
        btfss STATUS,0,0
        go@to FR@LB42
NX@LB43
CT@LB41
F1_000287 equ $ ; IN [DORJI.BAS] NEXT BYTECOUNT
        incf bytecount,F,0
        btfss STATUS,0,0
        go@to FR@LB39
NX@LB40
F1_000288 equ $ ; IN [DORJI.BAS] RETURN
        return 0
F1_000298 equ $ ; IN [DORJI.BAS] END
PB@LB48
        clrwdt
        bra PB@LB48
F1_EOF equ $ ; DORJI.BAS
PB@LB49
        clrwdt
        bra PB@LB49
__EOF
config OSC = HS
config FCMEN = off
config IESO = off
config PWRT = on
config BOREN = on
config BORV = 2
config WDT = on
config WDTPS = 128
config MCLRE = on
config LPT1OSC = off
config PBADEN = off
config CCP2MX = PORTC
config STVREN = on
config LVP = off
config XINST = off
config DEBUG = off
config CP0 = off
config CP1 = off
config CP2 = off
config CP3 = off
config CPB = off
config CPD = off
config WRT0 = off
config WRT1 = off
config WRT2 = off
config WRT3 = off
config WRTB = off
config WRTC = off
config WRTD = off
config EBTR0 = off
config EBTR1 = off
config EBTR2 = off
config EBTR3 = off
config EBTRB = off
        end
