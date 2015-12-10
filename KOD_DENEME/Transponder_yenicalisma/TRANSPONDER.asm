;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.4.5
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. May 2012
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 18F24K22, F = INHX32, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255, T=ON
ANSELA equ 0X0F38
ANSELB equ 0X0F39
ANSELC equ 0X0F3A
PMD2 equ 0X0F3D
PMD1 equ 0X0F3E
PMD0 equ 0X0F3F
DACCON1 equ 0X0F40
VREFCON2 equ 0X0F40
DACCON0 equ 0X0F41
VREFCON1 equ 0X0F41
FVRCON equ 0X0F42
VREFCON0 equ 0X0F42
CTMUICON equ 0X0F43
CTMUICONH equ 0X0F43
CTMUCON1 equ 0X0F44
CTMUCONL equ 0X0F44
CTMUCON0 equ 0X0F45
CTMUCONH equ 0X0F45
CTMUCONLH equ 0X0F45
SRCON1 equ 0X0F46
SRCON0 equ 0X0F47
CCPTMRS1 equ 0X0F48
CCPTMRS0 equ 0X0F49
T6CON equ 0X0F4A
PR6 equ 0X0F4B
TMR6 equ 0X0F4C
T5GCON equ 0X0F4D
T5CON equ 0X0F4E
TMR5 equ 0X0F4F
TMR5L equ 0X0F4F
TMR5LH equ 0X0F50
TMR5H equ 0X0F50
T4CON equ 0X0F51
PR4 equ 0X0F52
TMR4 equ 0X0F53
CCP5CON equ 0X0F54
CCPR5 equ 0X0F55
CCPR5L equ 0X0F55
CCPR5LH equ 0X0F56
CCPR5H equ 0X0F56
CCP4CON equ 0X0F57
CCPR4 equ 0X0F58
CCPR4L equ 0X0F58
CCPR4LH equ 0X0F59
CCPR4H equ 0X0F59
PSTR3CON equ 0X0F5A
CCP3AS equ 0X0F5B
ECCP3AS equ 0X0F5B
PWM3CON equ 0X0F5C
CCP3CON equ 0X0F5D
CCPR3 equ 0X0F5E
CCPR3L equ 0X0F5E
CCPR3LH equ 0X0F5F
CCPR3H equ 0X0F5F
SLRCON equ 0X0F60
WPUB equ 0X0F61
IOCB equ 0X0F62
PSTR2CON equ 0X0F63
CCP2AS equ 0X0F64
ECCP2AS equ 0X0F64
PWM2CON equ 0X0F65
CCP2CON equ 0X0F66
CCPR2 equ 0X0F67
CCPR2L equ 0X0F67
CCPR2LH equ 0X0F68
CCPR2H equ 0X0F68
SSP2CON3 equ 0X0F69
SSP2MSK equ 0X0F6A
SSP2CON2 equ 0X0F6B
SSP2CON1 equ 0X0F6C
SSP2STAT equ 0X0F6D
SSP2ADD equ 0X0F6E
SSP2BUF equ 0X0F6F
BAUD2CON equ 0X0F70
BAUDCON2 equ 0X0F70
RC2STA equ 0X0F71
RCSTA2 equ 0X0F71
TX2STA equ 0X0F72
TXSTA2 equ 0X0F72
TX2REG equ 0X0F73
TXREG2 equ 0X0F73
RC2REG equ 0X0F74
RCREG2 equ 0X0F74
SP2BRG equ 0X0F75
SPBRG2 equ 0X0F75
SP2BRGH equ 0X0F76
SPBRG2H equ 0X0F76
SPBRGH2 equ 0X0F76
CM12CON equ 0X0F77
CM2CON1 equ 0X0F77
CM2CON equ 0X0F78
CM2CON0 equ 0X0F78
CM1CON equ 0X0F79
CM1CON0 equ 0X0F79
PIE4 equ 0X0F7A
PIR4 equ 0X0F7B
IPR4 equ 0X0F7C
PIE5 equ 0X0F7D
PIR5 equ 0X0F7E
IPR5 equ 0X0F7F
PORTA equ 0X0F80
PORTB equ 0X0F81
PORTC equ 0X0F82
PORTE equ 0X0F84
LATA equ 0X0F89
LATB equ 0X0F8A
LATC equ 0X0F8B
DDRA equ 0X0F92
TRISA equ 0X0F92
DDRB equ 0X0F93
TRISB equ 0X0F93
DDRC equ 0X0F94
TRISC equ 0X0F94
TRISE equ 0X0F96
OSCTUNE equ 0X0F9B
HLVDCON equ 0X0F9C
LVDCON equ 0X0F9C
PIE1 equ 0X0F9D
PIR1 equ 0X0F9E
IPR1 equ 0X0F9F
PIE2 equ 0X0FA0
PIR2 equ 0X0FA1
IPR2 equ 0X0FA2
PIE3 equ 0X0FA3
PIR3 equ 0X0FA4
IPR3 equ 0X0FA5
EECON1 equ 0X0FA6
EECON2 equ 0X0FA7
EEDATL equ 0X0FA8
EEDATA equ 0X0FA8
EEADR equ 0X0FA9
EEADRH equ 0X0FAA
RC1STA equ 0X0FAB
RCSTA equ 0X0FAB
RCSTA1 equ 0X0FAB
TX1STA equ 0X0FAC
TXSTA equ 0X0FAC
TXSTA1 equ 0X0FAC
TX1REG equ 0X0FAD
TXREG equ 0X0FAD
TXREG1 equ 0X0FAD
RC1REG equ 0X0FAE
RCREG equ 0X0FAE
RCREG1 equ 0X0FAE
SP1BRG equ 0X0FAF
SPBRG equ 0X0FAF
SPBRG1 equ 0X0FAF
SP1BRGH equ 0X0FB0
SPBRGH equ 0X0FB0
SPBRG1H equ 0X0FB0
SPBRGH1 equ 0X0FB0
T3CON equ 0X0FB1
TMR3L equ 0X0FB2
TMR3LH equ 0X0FB3
TMR3H equ 0X0FB3
T3GCON equ 0X0FB4
ECCP1AS equ 0X0FB6
ECCPAS equ 0X0FB6
PWM1CON equ 0X0FB7
PWMCON equ 0X0FB7
BAUD1CON equ 0X0FB8
BAUDCON equ 0X0FB8
BAUDCON1 equ 0X0FB8
BAUDCTL equ 0X0FB8
PSTR1CON equ 0X0FB9
PSTRCON equ 0X0FB9
T2CON equ 0X0FBA
PR2 equ 0X0FBB
TMR2 equ 0X0FBC
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
SSP1CON2 equ 0X0FC5
SSPCON2 equ 0X0FC5
SSP1CON1 equ 0X0FC6
SSPCON1 equ 0X0FC6
SSP1STAT equ 0X0FC7
SSPSTAT equ 0X0FC7
SSP1ADD equ 0X0FC8
SSPADD equ 0X0FC8
SSP1BUF equ 0X0FC9
SSPBUF equ 0X0FC9
SSP1MSK equ 0X0FCA
SSPMSK equ 0X0FCA
SSP1CON3 equ 0X0FCB
SSPCON3 equ 0X0FCB
T1GCON equ 0X0FCC
T1CON equ 0X0FCD
TMR1L equ 0X0FCE
TMR1LH equ 0X0FCF
TMR1H equ 0X0FCF
RCON equ 0X0FD0
WDTCON equ 0X0FD1
OSCCON2 equ 0X0FD2
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
TBLPTRLHH equ 0X0FF8
TBLPTRLHHH equ 0X0FE8
TBLPTRU equ 0X0FF8
PC equ 0X0FF9
PCL equ 0X0FF9
PCLATH equ 0X0FFA
PCLATU equ 0X0FFB
STKPTR equ 0X0FFC
TOSL equ 0X0FFD
TOSLH equ 0X0FFE
TOSH equ 0X0FFE
TOSU equ 0X0FFF
_I2C_SDA_PORT=TRISC
_I2C_SDA_PIN=4
_I2C_SCL_PORT=TRISC
_I2C_SCL_PIN=3
ANSA0=0
ANSA1=1
ANSA2=2
ANSA3=3
ANSA5=5
ANSB0=0
ANSB1=1
ANSB2=2
ANSB3=3
ANSB4=4
ANSB5=5
ANSC2=2
ANSC3=3
ANSC4=4
ANSC5=5
ANSC6=6
ANSC7=7
ADCMD=0
CMP1MD=1
CMP2MD=2
CTMUMD=3
CCP1MD=0
CCP2MD=1
CCP3MD=2
CCP4MD=3
CCP5MD=4
MSSP1MD=6
MSSP2MD=7
TMR1MD=0
TMR2MD=1
TMR3MD=2
TMR4MD=3
TMR5MD=4
TMR6MD=5
UART1MD=6
UART2MD=7
DACR0=0
DACR1=1
DACR2=2
DACR3=3
DACR4=4
DACR0=0
DACR1=1
DACR2=2
DACR3=3
DACR4=4
DACNSS=0
DACOE=5
DACLPS=6
DACEN=7
DACPSS0=2
DACPSS1=3
DACNSS=0
DACOE=5
DACLPS=6
DACEN=7
DACPSS0=2
DACPSS1=3
FVRST=6
FVREN=7
FVRS0=4
FVRS1=5
FVRST=6
FVREN=7
FVRS0=4
FVRS1=5
IRNG0=0
IRNG1=1
ITRIM0=2
ITRIM1=3
ITRIM2=4
ITRIM3=5
ITRIM4=6
ITRIM5=7
IRNG0=0
IRNG1=1
ITRIM0=2
ITRIM1=3
ITRIM2=4
ITRIM3=5
ITRIM4=6
ITRIM5=7
EDG1STAT=0
EDG2STAT=1
EDG1POL=4
EDG2POL=7
EDG1SEL0=2
EDG1SEL1=3
EDG2SEL0=5
EDG2SEL1=6
EDG1STAT=0
EDG2STAT=1
EDG1POL=4
EDG2POL=7
EDG1SEL0=2
EDG1SEL1=3
EDG2SEL0=5
EDG2SEL1=6
CTTRIG=0
IDISSEN=1
EDGSEQEN=2
EDGEN=3
TGEN=4
CTMUSIDL=5
CTMUEN=7
CTTRIG=0
IDISSEN=1
EDGSEQEN=2
EDGEN=3
TGEN=4
CTMUSIDL=5
CTMUEN=7
SRRC1E=0
SRRC2E=1
SRRCKE=2
SRRPE=3
SRSC1E=4
SRSC2E=5
SRSCKE=6
SRSPE=7
SRPR=0
SRPS=1
SRNQEN=2
SRQEN=3
SRLEN=7
SRCLK0=4
SRCLK1=5
SRCLK2=6
C4TSEL0=0
C4TSEL1=1
C5TSEL0=2
C5TSEL1=3
C1TSEL0=0
C1TSEL1=1
C2TSEL0=3
C2TSEL1=4
C3TSEL0=6
C3TSEL1=7
TMR6ON=2
T6CKPS0=0
T6CKPS1=1
T6OUTPS0=3
T6OUTPS1=4
T6OUTPS2=5
T6OUTPS3=6
T5GVAL=2
T5GGO_NOT_DONE=3
T5GSPM=4
T5GTM=5
T5GPOL=6
TMR5GE=7
T5GSS0=0
T5GSS1=1
T5GGO=3
T5G_DONE=3
TMR5ON=0
T5RD16=1
NOT_T5SYNC=2
T5SOSCEN=3
T5SYNC=2
T5CKPS0=4
T5CKPS1=5
TMR5CS0=6
TMR5CS1=7
TMR4ON=2
PP_TMR4ON=2
T4CKPS0=0
T4CKPS1=1
T4OUTPS0=3
T4OUTPS1=4
T4OUTPS2=5
T4OUTPS3=6
CCP5M0=0
CCP5M1=1
CCP5M2=2
CCP5M3=3
DC5B0=4
DC5B1=5
CCP4M0=0
CCP4M1=1
CCP4M2=2
CCP4M3=3
DC4B0=4
DC4B1=5
STR3A=0
STR3B=1
STR3C=2
STR3D=3
STR3SYNC=4
CCP3ASE=7
PSS3BD0=0
PSS3BD1=1
PSS3AC0=2
PSS3AC1=3
CCP3AS0=4
CCP3AS1=5
CCP3AS2=6
CCP3ASE=7
PSS3BD0=0
PSS3BD1=1
PSS3AC0=2
PSS3AC1=3
CCP3AS0=4
CCP3AS1=5
CCP3AS2=6
P3RSEN=7
P3DC0=0
P3DC1=1
P3DC2=2
P3DC3=3
P3DC4=4
P3DC5=5
P3DC6=6
CCP3M0=0
CCP3M1=1
CCP3M2=2
CCP3M3=3
DC3B0=4
DC3B1=5
P3M0=6
P3M1=7
SLRA=0
SLRB=1
SLRC=2
WPUB0=0
WPUB1=1
WPUB2=2
WPUB3=3
WPUB4=4
WPUB5=5
WPUB6=6
WPUB7=7
IOCB4=4
IOCB5=5
IOCB6=6
IOCB7=7
STR2A=0
STR2B=1
STR2C=2
STR2D=3
STR2SYNC=4
CCP2ASE=7
PSS2BD0=0
PSS2BD1=1
PSS2AC0=2
PSS2AC1=3
CCP2AS0=4
CCP2AS1=5
CCP2AS2=6
CCP2ASE=7
PSS2BD0=0
PSS2BD1=1
PSS2AC0=2
PSS2AC1=3
CCP2AS0=4
CCP2AS1=5
CCP2AS2=6
P2RSEN=7
P2DC0=0
P2DC1=1
P2DC2=2
P2DC3=3
P2DC4=4
P2DC5=5
P2DC6=6
P2M0=6
P2M1=7
CCP2M0=0
CCP2M1=1
CCP2M2=2
CCP2M3=3
DC2B0=4
DC2B1=5
DHEN=0
AHEN=1
SBCDE=2
SDAHT=3
BOEN=4
SCIE=5
PCIE=6
ACKTIM=7
MSK0=0
MSK1=1
MSK2=2
MSK3=3
MSK4=4
MSK5=5
MSK6=6
MSK7=7
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
CKP=4
SSPEN=5
SSPOV=6
WCOL=7
SSPM0=0
SSPM1=1
SSPM2=2
SSPM3=3
BF=0
UA=1
R_NOT_W=2
PP_R_NOT_W=2
D_NOT_A=5
CKE=6
SMP=7
NOT_W=2
NOT_A=5
R_W=2
PP_R_W=2
D_A=5
NOT_WRITE=2
NOT_ADDRESS=5
ABDEN=0
WUE=1
BRG16=3
CKTXP=4
DTRXP=5
RCIDL=6
ABDOVF=7
SCKP=4
ABDEN=0
WUE=1
BRG16=3
CKTXP=4
DTRXP=5
RCIDL=6
ABDOVF=7
SCKP=4
RX9D=0
OERR=1
PP_OERR=1
FERR=2
ADDEN=3
CREN=4
PP_CREN=4
SREN=5
RX9=6
SPEN=7
ADEN=3
RX9D=0
OERR=1
PP_OERR=1
FERR=2
ADDEN=3
CREN=4
PP_CREN=4
SREN=5
RX9=6
SPEN=7
ADEN=3
TX9D=0
TRMT=1
BRGH=2
SENDB=3
PP_SENDB=3
SYNC=4
TXEN=5
TX9=6
CSRC=7
TX9D=0
TRMT=1
BRGH=2
SENDB=3
PP_SENDB=3
SYNC=4
TXEN=5
TX9=6
CSRC=7
C2SYNC=0
C1SYNC=1
C2HYS=2
C1HYS=3
C2RSEL=4
C1RSEL=5
MC2OUT=6
MC1OUT=7
C2SYNC=0
C1SYNC=1
C2HYS=2
C1HYS=3
C2RSEL=4
C1RSEL=5
MC2OUT=6
MC1OUT=7
C2R=2
C2SP=3
C2POL=4
C2OE=5
C2OUT_CM2CON=6
C2ON=7
C2CH0=0
C2CH1=1
C2R=2
C2SP=3
C2POL=4
C2OE=5
C2OUT_CM2CON0=6
C2ON=7
C2CH0=0
C2CH1=1
C1R=2
C1SP=3
C1POL=4
C1OE=5
C1OUT_CM1CON=6
C1ON=7
C1CH0=0
C1CH1=1
C1R=2
C1SP=3
C1POL=4
C1OE=5
C1OUT_CM1CON0=6
C1ON=7
C1CH0=0
C1CH1=1
CCP3IE=0
CCP4IE=1
CCP5IE=2
CCP3IF=0
CCP4IF=1
CCP5IF=2
CCP3IP=0
CCP4IP=1
CCP5IP=2
TMR4IE=0
TMR5IE=1
TMR6IE=2
TMR4IF=0
TMR5IF=1
TMR6IF=2
TMR4IP=0
TMR5IP=1
TMR6IP=2
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
AN4=5
C12IN0M=0
C12IN1M=1
C2INP=2
C1INP=3
C1OUT_PORTA=4
C2OUT_PORTA=5
C12IN0N=0
C12IN1N=1
VREFM=2
VREFP=3
T0CKI=4
SS=5
VREFN=2
SRQ=4
NOT_SS=5
CVREF=2
CCP5=4
LVDIN=5
DACOUT=2
HLVDIN=5
SS1=5
NOT_SS1=5
SRNQ=5
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
AN13=5
TX2=6
RX2=7
FLT0=0
C12IN3M=1
P1B=2
C12IN2M=3
T5G=4
T1G=5
CK2=6
DT2=7
SRI=0
C12IN3N=1
CTED1=2
C12IN2N=3
P1D=4
CCP3_PORTB=5
PGC=6
PGD=7
CCP4=0
P1C=1
SDA2=2
CTED2=3
T3CKI_PORTB=5
SS2=0
SCL2=1
SDI2=2
P2A_PORTB=3
P3A_PORTB=5
NOT_SS2=0
SCK2=1
SDO2=3
P2B_PORTB=5
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
T5CKI=2
SCK=3
SDI=4
SDO=5
TX=6
RX=7
P2B_PORTC=0
P2A_PORTC=1
P1A=2
SCL=3
SDA=4
CK=6
T1CKI=0
CCP2_PORTC=1
CCP1=2
SCK1=3
SDI1=4
SDO1=5
TX1=6
RX1=7
T3CKI_PORTC=0
CTPLS=2
SCL1=3
SDA1=4
CK1=6
DT1=7
T3G=0
AN14=2
AN15=3
AN16=4
AN17=5
AN18=6
AN19=7
CCP3_PORTC=6
P3B=7
P3A_PORTC=6
RE3=3
MCLR=3
NOT_MCLR=3
VPP=3
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
TRISA0=0
TRISA1=1
TRISA2=2
TRISA3=3
TRISA4=4
TRISA5=5
TRISA6=6
TRISA7=7
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
RA0=0
RA1=1
RA2=2
RA3=3
RA4=4
RA5=5
RA6=6
RA7=7
TRISB0=0
TRISB1=1
TRISB2=2
TRISB3=3
TRISB4=4
TRISB5=5
TRISB6=6
TRISB7=7
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
RB0=0
RB1=1
RB2=2
RB3=3
RB4=4
RB5=5
RB6=6
RB7=7
TRISC0=0
TRISC1=1
TRISC2=2
TRISC3=3
TRISC4=4
TRISC5=5
TRISC6=6
TRISC7=7
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
RC0=0
RC1=1
RC2=2
RC3=3
RC4=4
RC5=5
RC6=6
RC7=7
WPUE3=7
PLLEN=6
INTSRC=7
TUN0=0
TUN1=1
TUN2=2
TUN3=3
TUN4=4
TUN5=5
HLVDEN=4
IRVST=5
BGVST=6
VDIRMAG=7
HLVDL0=0
HLVDL1=1
HLVDL2=2
HLVDL3=3
LVDL0=0
LVDL1=1
LVDL2=2
LVDL3=3
LVDEN=4
IVRST=5
LVV0=0
LVV1=1
LVV2=2
LVV3=3
BGST=5
HLVDEN=4
IRVST=5
BGVST=6
VDIRMAG=7
HLVDL0=0
HLVDL1=1
HLVDL2=2
HLVDL3=3
LVDL0=0
LVDL1=1
LVDL2=2
LVDL3=3
LVDEN=4
IVRST=5
LVV0=0
LVV1=1
LVV2=2
LVV3=3
BGST=5
TMR1IE=0
TMR2IE=1
CCP1IE=2
SSP1IE=3
TX1IE=4
RC1IE=5
ADIE=6
SSPIE=3
TXIE=4
RCIE=5
TMR1IF=0
TMR2IF=1
CCP1IF=2
SSP1IF=3
TX1IF=4
RC1IF=5
ADIF=6
SSPIF=3
TXIF=4
PP_TXIF=4
RCIF=5
PP_RCIF=5
TMR1IP=0
TMR2IP=1
CCP1IP=2
SSP1IP=3
TX1IP=4
RC1IP=5
ADIP=6
SSPIP=3
TXIP=4
RCIP=5
CCP2IE=0
TMR3IE=1
HLVDIE=2
BCL1IE=3
EEIE=4
C2IE=5
C1IE=6
OSCFIE=7
LVDIE=2
BCLIE=3
CCP2IF=0
TMR3IF=1
HLVDIF=2
BCL1IF=3
EEIF=4
C2IF=5
C1IF=6
OSCFIF=7
LVDIF=2
BCLIF=3
CCP2IP=0
TMR3IP=1
HLVDIP=2
BCL1IP=3
EEIP=4
C2IP=5
C1IP=6
OSCFIP=7
LVDIP=2
BCLIP=3
TMR1GIE=0
TMR3GIE=1
TMR5GIE=2
CTMUIE=3
TX2IE=4
RC2IE=5
BCL2IE=6
SSP2IE=7
TMR1GIF=0
TMR3GIF=1
TMR5GIF=2
CTMUIF=3
TX2IF=4
RC2IF=5
BCL2IF=6
SSP2IF=7
TMR1GIP=0
TMR3GIP=1
TMR5GIP=2
CTMUIP=3
TX2IP=4
RC2IP=5
BCL2IP=6
SSP2IP=7
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
EEADR0=0
EEADR1=1
EEADR2=2
EEADR3=3
EEADR4=4
EEADR5=5
EEADR6=6
EEADR7=7
RX9D=0
OERR=1
PP_OERR=1
FERR=2
ADDEN=3
CREN=4
PP_CREN=4
SREN=5
RX9=6
SPEN=7
ADEN=3
RX9D=0
OERR=1
PP_OERR=1
FERR=2
ADDEN=3
CREN=4
PP_CREN=4
SREN=5
RX9=6
SPEN=7
ADEN=3
RX9D=0
OERR=1
PP_OERR=1
FERR=2
ADDEN=3
CREN=4
PP_CREN=4
SREN=5
RX9=6
SPEN=7
ADEN=3
TX9D=0
TRMT=1
BRGH=2
SENDB=3
PP_SENDB=3
SYNC=4
TXEN=5
TX9=6
CSRC=7
TX9D=0
TRMT=1
BRGH=2
SENDB=3
PP_SENDB=3
SYNC=4
TXEN=5
TX9=6
CSRC=7
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
T3RD16=1
NOT_T3SYNC=2
T3SOSCEN=3
T3OSCEN=3
T3CKPS0=4
T3CKPS1=5
TMR3CS0=6
TMR3CS1=7
T3GVAL=2
T3GGO_NOT_DONE=3
T3GSPM=4
T3GTM=5
T3GPOL=6
TMR3GE=7
T3GSS0=0
T3GSS1=1
T3G_DONE=3
T3GGO=3
CCP1ASE=7
PSS1BD0=0
PSS1BD1=1
PSS1AC0=2
PSS1AC1=3
CCP1AS0=4
CCP1AS1=5
CCP1AS2=6
ECCPASE=7
PSSBD0=0
PSSBD1=1
PSSAC0=2
PSSAC1=3
ECCPAS0=4
ECCPAS1=5
ECCPAS2=6
CCP1ASE=7
PSS1BD0=0
PSS1BD1=1
PSS1AC0=2
PSS1AC1=3
CCP1AS0=4
CCP1AS1=5
CCP1AS2=6
ECCPASE=7
PSSBD0=0
PSSBD1=1
PSSAC0=2
PSSAC1=3
ECCPAS0=4
ECCPAS1=5
ECCPAS2=6
P1RSEN=7
P1DC0=0
P1DC1=1
P1DC2=2
P1DC3=3
P1DC4=4
P1DC5=5
P1DC6=6
PRSEN=7
PDC0=0
PDC1=1
PDC2=2
PDC3=3
PDC4=4
PDC5=5
PDC6=6
P1RSEN=7
P1DC0=0
P1DC1=1
P1DC2=2
P1DC3=3
P1DC4=4
P1DC5=5
P1DC6=6
PRSEN=7
PDC0=0
PDC1=1
PDC2=2
PDC3=3
PDC4=4
PDC5=5
PDC6=6
ABDEN=0
WUE=1
BRG16=3
CKTXP=4
DTRXP=5
RCIDL=6
ABDOVF=7
SCKP=4
ABDEN=0
WUE=1
BRG16=3
CKTXP=4
DTRXP=5
RCIDL=6
ABDOVF=7
SCKP=4
ABDEN=0
WUE=1
BRG16=3
CKTXP=4
DTRXP=5
RCIDL=6
ABDOVF=7
SCKP=4
ABDEN=0
WUE=1
BRG16=3
CKTXP=4
DTRXP=5
RCIDL=6
ABDOVF=7
SCKP=4
STR1A=0
STR1B=1
STR1C=2
STR1D=3
STR1SYNC=4
STR1A=0
STR1B=1
STR1C=2
STR1D=3
STR1SYNC=4
TMR2ON=2
PP_TMR2ON=2
T2CKPS0=0
PP_T2CKPS0=0
T2CKPS1=1
PP_T2CKPS1=1
T2OUTPS0=3
T2OUTPS1=4
T2OUTPS2=5
T2OUTPS3=6
CCP1M0=0
CCP1M1=1
CCP1M2=2
CCP1M3=3
DC1B0=4
DC1B1=5
P1M0=6
P1M1=7
ADFM=7
ADCS0=0
ADCS1=1
ADCS2=2
ACQT0=3
ACQT1=4
ACQT2=5
TRIGSEL=7
NVCFG0=0
NVCFG1=1
PVCFG0=2
PVCFG1=3
ADON=0
PP_ADON=0
GO_NOT_DONE=1
PP_GO_NOT_DONE=1
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
CKP=4
SSPEN=5
SSPOV=6
WCOL=7
SSPM0=0
SSPM1=1
SSPM2=2
SSPM3=3
CKP=4
SSPEN=5
SSPOV=6
WCOL=7
SSPM0=0
SSPM1=1
SSPM2=2
SSPM3=3
BF=0
UA=1
R_NOT_W=2
PP_R_NOT_W=2
D_NOT_A=5
CKE=6
SMP=7
NOT_W=2
NOT_A=5
R_W=2
PP_R_W=2
D_A=5
NOT_WRITE=2
NOT_ADDRESS=5
BF=0
UA=1
R_NOT_W=2
PP_R_NOT_W=2
D_NOT_A=5
CKE=6
SMP=7
NOT_W=2
NOT_A=5
R_W=2
PP_R_W=2
D_A=5
NOT_WRITE=2
NOT_ADDRESS=5
MSK0=0
MSK1=1
MSK2=2
MSK3=3
MSK4=4
MSK5=5
MSK6=6
MSK7=7
MSK0=0
MSK1=1
MSK2=2
MSK3=3
MSK4=4
MSK5=5
MSK6=6
MSK7=7
DHEN=0
AHEN=1
SBCDE=2
SDAHT=3
BOEN=4
SCIE=5
PCIE=6
ACKTIM=7
DHEN=0
AHEN=1
SBCDE=2
SDAHT=3
BOEN=4
SCIE=5
PCIE=6
ACKTIM=7
T1GVAL=2
T1GGO_NOT_DONE=3
T1GSPM=4
T1GTM=5
T1GPOL=6
TMR1GE=7
T1GSS0=0
T1GSS1=1
T1G_DONE=3
T1GGO=3
TMR1ON=0
T1RD16=1
NOT_T1SYNC=2
T1SOSCEN=3
RD16=1
PP_RD16=1
T1SYNC=2
T1OSCEN=3
T1CKPS0=4
T1CKPS1=5
TMR1CS0=6
TMR1CS1=7
NOT_BOR=0
NOT_POR=1
NOT_PD=2
NOT_TO=3
NOT_RI=4
SBOREN=6
IPEN=7
BOR=0
POR=1
PD=2
TO=3
RI=4
SWDTEN=0
SWDTE=0
LFIOFS=0
MFIOFS=1
PRISD=2
SOSCGO=3
MFIOSEL=4
SOSCRUN=6
PLLRDY=7
HFIOFS=2
OSTS=3
IDLEN=7
SCS0=0
SCS1=1
IOFS=2
IRCF0=4
IRCF1=5
IRCF2=6
PSA=3
T0SE=4
T0CS=5
T08BIT=6
TMR0ON=7
T0PS0=0
T0PS1=1
T0PS2=2
C=0
DC=1
Z=2
OV=3
N=4
INT1IF=0
INT2IF=1
INT1IE=3
INT2IE=4
INT1IP=6
INT2IP=7
INT1F=0
INT2F=1
INT1E=3
INT2E=4
INT1P=6
INT2P=7
RBIP=0
TMR0IP=2
INTEDG2=4
INTEDG1=5
INTEDG0=6
NOT_RBPU=7
RBPU=7
RBIF=0
INT0IF=1
TMR0IF=2
RBIE=3
INT0IE=4
TMR0IE=5
PEIE_GIEL=6
GIE_GIEH=7
INT0F=1
T0IF=2
INT0E=4
T0IE=5
PEIE=6
GIE=7
GIEL=6
GIEH=7
STKUNF=6
STKFUL=7
SP0=0
SP1=1
SP2=2
SP3=3
SP4=4
STKOVF=7
  __MAXRAM  0X0FFF
  __BADRAM  0X0300-0X0F37
  __BADRAM  0X0F3B-0X0F3C
  __BADRAM  0X0F83
  __BADRAM  0X0F85-0X0F88
  __BADRAM  0X0F8C-0X0F91
  __BADRAM  0X0F95
  __BADRAM  0X0F97-0X0F9A
  __BADRAM  0X0FAA
  __BADRAM  0X0FB5
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
FOSC_LP_1 equ 0XF0
FOSC_XT_1 equ 0XF1
FOSC_HSHP_1 equ 0XF2
FOSC_HSMP_1 equ 0XF3
FOSC_ECHP_1 equ 0XF4
FOSC_ECHPIO6_1 equ 0XF5
FOSC_RC_1 equ 0XF6
FOSC_RCIO6_1 equ 0XF7
FOSC_INTIO67_1 equ 0XF8
FOSC_INTIO7_1 equ 0XF9
FOSC_ECMP_1 equ 0XFA
FOSC_ECMPIO6_1 equ 0XFB
FOSC_ECLP_1 equ 0XFC
FOSC_ECLPIO6_1 equ 0XFD
PLLCFG_OFF_1 equ 0XEF
PLLCFG_ON_1 equ 0XFF
PRICLKEN_OFF_1 equ 0XDF
PRICLKEN_ON_1 equ 0XFF
FCMEN_OFF_1 equ 0XBF
FCMEN_ON_1 equ 0XFF
IESO_OFF_1 equ 0X7F
IESO_ON_1 equ 0XFF
PWRTEN_ON_2 equ 0XFE
PWRTEN_OFF_2 equ 0XFF
BOREN_OFF_2 equ 0XF9
BOREN_ON_2 equ 0XFB
BOREN_NOSLP_2 equ 0XFD
BOREN_SBORDIS_2 equ 0XFF
BORV_285_2 equ 0XE7
BORV_250_2 equ 0XEF
BORV_220_2 equ 0XF7
BORV_190_2 equ 0XFF
WDTEN_OFF_2 equ 0XFC
WDTEN_NOSLP_2 equ 0XFD
WDTEN_SWON_2 equ 0XFE
WDTEN_ON_2 equ 0XFF
WDTPS_1_2 equ 0XC3
WDTPS_2_2 equ 0XC7
WDTPS_4_2 equ 0XCB
WDTPS_8_2 equ 0XCF
WDTPS_16_2 equ 0XD3
WDTPS_32_2 equ 0XD7
WDTPS_64_2 equ 0XDB
WDTPS_128_2 equ 0XDF
WDTPS_256_2 equ 0XE3
WDTPS_512_2 equ 0XE7
WDTPS_1024_2 equ 0XEB
WDTPS_2048_2 equ 0XEF
WDTPS_4096_2 equ 0XF3
WDTPS_8192_2 equ 0XF7
WDTPS_16384_2 equ 0XFB
WDTPS_32768_2 equ 0XFF
CCP2MX_PORTB3_3 equ 0XFE
CCP2MX_PORTC1_3 equ 0XFF
PBADEN_OFF_3 equ 0XFD
PBADEN_ON_3 equ 0XFF
CCP3MX_PORTC6_3 equ 0XFB
CCP3MX_PORTB5_3 equ 0XFF
HFOFST_OFF_3 equ 0XF7
HFOFST_ON_3 equ 0XFF
T3CMX_PORTB5_3 equ 0XEF
T3CMX_PORTC0_3 equ 0XFF
P2BMX_PORTC0_3 equ 0XDF
P2BMX_PORTB5_3 equ 0XFF
MCLRE_INTMCLR_3 equ 0X7F
MCLRE_EXTMCLR_3 equ 0XFF
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
WRTC_ON_6 equ 0XDF
WRTC_OFF_6 equ 0XFF
WRTB_ON_6 equ 0XBF
WRTB_OFF_6 equ 0XFF
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
#define __18F24K22 1
#define XTAL 4
#define _CORE 16
#define _MAXRAM 768
#define _RAM_END 768
#define _MAXMEM 0X4000
#define _ADC 19
#define _ADC_RES 10
#define _EEPROM 256
#define RAM_BANKS 0
#define _USART 2
#define _USB 0
#define _USB#RAM_START 0
#define _FLASH 1
#define _CWRITE_BLOCK 32
#define bankA_Start 0
#define bankA_End 95
#define _SYSTEM_VARIABLE_COUNT 19
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
GEN = 0
PBP#VAR0 = 1
PBP#VAR0H = 2
PBP#VAR0HH = 3
PBP#VAR0HHH = 4
PP0 = 5
PP0H = 6
PP1 = 7
PP1H = 8
PP2 = 9
PP2H = 10
PP3 = 11
PP3H = 12
PP4 = 13
PP4H = 14
PP5 = 15
PP7 = 16
PP7H = 17
SP#P9 = 18
TRANSPONDER_MODE = 19
TR_MD = 20
FREK1 = 21
FREK1H = 22
FREK2 = 23
FREK2H = 24
STP = 25
STPH = 26
REF = 27
REFH = 28
_A = 29
_AH = 30
_N = 31
_NH = 32
_R = 33
_RH = 34
_X = 35
_XH = 36
PRE = 37
PRE2 = 38
DataOut = 39
DataOutH = 40
DataOutHH = 41
DataOutHHH = 42
sayac = 43
SaniyeBekle = 44
TPS_Akim = 45
TPS_AkimH = 46
Pwm_val = 47
Cikis_Gucu = 48
Cikis_GucuH = 49
uS = 50
uSH = 51
mS = 52
mSH = 53
_S = 54
_SH = 55
mn = 56
hr = 57
dy = 58
DataIn = 59
LastData = 60
Slave_Address = 61
I2C_Data = 62
variable I2C_Data#0=62,I2C_Data#1=63,I2C_Data#2=64,I2C_Data#3=65
variable I2C_Data#4=66,I2C_Data#5=67,I2C_Data#6=68,I2C_Data#7=69
variable I2C_Data#8=70,I2C_Data#9=71
I2C_DataCount = 72
STATE_INFO = 73
RESPONSE = 74
DURUM = 75
_B#VR1 = 76
DutyCycle = 77
say = 78
_High__Context_Store = 79
variable _High__Context_Store#0=79,_High__Context_Store#1=80,_High__Context_Store#2=81,_High__Context_Store#3=82
#define __CCP1_PIN PORTC,2
#define __CCP2_PIN PORTC,7
#define AGC8317in PORTA,1
#define ACS714_5V PORTA,2
#define pllLD PORTA,3
#define TPS2421en PORTA,4
#define PWRled PORTA,5
#define mySCL2 PORTB,1
#define mySDA2 PORTB,2
#define pllCLK PORTB,3
#define pllDATA PORTB,4
#define pllLE PORTB,5
#define pllPSRF PORTB,6
#define pllPSIF PORTB,7
#define LD29300enable PORTC,0
#define TPS3823WDI PORTC,1
#define AD8317AGCset PORTC,2
#define mySCL1 PORTC,3
#define mySDA1 PORTC,4
#define AD8317final PORTC,7
#define GIE INTCON,7
#define Timer1 TMR1L
#define Timer1H TMR1LH
#define TMR1_Enable PIE1,0
#define TMR1_Overflow PIR1,0
#define TMR1_On T1CON,0
#define SSPIF PIR1,3
#define SSPIP IPR1,3
#define SSPIE PIE1,3
#define BF SSPSTAT,0
#define R_W SSPSTAT,2
#define D_A SSPSTAT,5
#define CKP SSPCON1,4
#define SSPEN SSPCON1,5
#define SSPOV SSPCON1,6
#define WCOL SSPCON1,7
#define SMP SSPSTAT,7
#define SEN SSP1CON2,0
#define AHEN SSP1CON3,1
#define PEIE INTCON,6
#define pllyaz_latch _B#VR1,0
#define __XTAL 4
#define UZAY 0
#define LAB 1
#define SA 3
#define TR_ON 1
#define TR_OFF 2
#define TMR1_Val 64536
#define TMR1_ValH 252
#define TMR1_mS 1
proton#code#start
        org 0
        goto proton#main#start
        org 8
        goto InterruptSection
__HPWM_
        movwf 14,0
        movlw 66
        movwf 5,0
        movlw 15
        movwf 6,0
        call __DIVIDE_U1616_
        btfsc 4056,2,0
        bcf 4026,PP_T2CKPS0,0
        btfss 4056,2,0
        bsf 4026,PP_T2CKPS0,0
        addlw 252
        btfss 4056,0,0
        bcf 4026,PP_T2CKPS1,0
        btfsc 4056,0,0
        bsf 4026,PP_T2CKPS1,0
        movlw 64
        movwf 5,0
        movlw 66
        movwf 6,0
        movlw 15
        movwf 9,0
        clrf 10,0
        btfsc 4026,PP_T2CKPS0,0
        rcall HPW@2S
        btfsc 4026,PP_T2CKPS1,0
        rcall HPW@2S
        call __DIVIDE_INT_U1616_
        decf 5,W,0
        movwf 4027,0
        movff 5,7
        movff 6,8
        movf 0,W,0
        movwf 11,0
        movwf 12,0
        incfsz 0,W,0
        clrf 12,0
        call __MULTIPLY_U1616_
        movf 10,W,0
        decfsz 14,F,0
        bra HPW@SK1
        movwf 4030,0
        movlw 12
        movwf 4029,0
        btfsc 9,7,0
        bsf 4029,5,0
        btfsc 9,6,0
        bsf 4029,4,0
        bcf TRISC,2,0
HPWM@FIN
        bsf 4026,PP_TMR2ON,0
        return
HPW@SK1
        movwf 3943,0
        movlw 12
        movwf 3942,0
        btfsc 9,7,0
        bsf 3942,5,0
        btfsc 9,6,0
        bsf 3942,4,0
        bcf TRISC,7,0
        bra HPWM@FIN
HPW@2S
        rcall HPW@2L
HPW@2L
        bcf 4056,0,0
        rrcf 9,F,0
        rrcf 6,F,0
        rrcf 5,F,0
        return
ADIN_STIME = 50
ADIN_TAD = 3
ADIN_REQ = 10
__ADIN_
        rlcf 4072,F,0
        rlcf 4072,F,0
        andlw 252
        iorlw 1
        iorwf 4034,F,0
        iorlw 192
        andwf 4034,F,0
        movf 4032,W,0
        andlw 248
        iorlw 3
        movwf 4032,0
        movlw 50
        call __DELAY_US_
        bsf 4034,PP_GO_DONE,0
        btfsc 4034,PP_GO_DONE,0
        bra $ - 2
        movff 4036,17
        movf 4035,W,0
        movwf 16,0
        return
__DELAY_MS_
        clrf 8,0
__DELAY_MS_W_
        movwf 7,0
DLY@P
        movlw 255
        addwf 7,F,0
        addwfc 8,F,0
        bra $ + 2
        btfss 4056,0,0
        return
        movlw 3
        movwf 6,0
        movlw 222
        rcall __DELAY_US_W_
        bra DLY@P
__DELAY_US_
        clrf 6,0
__DELAY_US_W_
        addlw 233
        movwf 5,0
        movlw 252
        bnc $ + 12
        nop
        nop
        addwf 5,F,0
        bc $ - 4
        nop
        addwf 5,F,0
        decf 6,F,0
        bc $ - 12
        btfsc 5,0,0
        bra $ + 2
        btfss 5,1,0
        bra $ + 6
        bra $ + 2
        nop
        return
__DIVIDE_U1616_
        clrf 10,0
        clrf 9,0
__DIVIDE_INT_U1616_
        movlw 16
        movwf 4083,0
DV@LP
        rlcf 6,W,0
        rlcf 9,F,0
        rlcf 10,F,0
        movf 7,W,0
        subwf 9,W,0
        movf 8,W,0
        subwfb 10,W,0
        bnc D@K
        movf 7,W,0
        subwf 9,F,0
        movf 8,W,0
        subwfb 10,F,0
        bsf 4056,0,0
D@K
        rlcf 5,F,0
        rlcf 6,F,0
        decfsz 4083,F,0
        bra DV@LP
        movf 5,W,0
        return
__MULTIPLY_U1616_
        movf 7,W,0
        mulwf 11,0
        movff 4083,9
        movff 4084,10
        movf 8,W,0
        mulwf 11,0
        movf 4083,W,0
        addwf 10,F,0
        movf 7,W,0
        mulwf 12,0
        movf 4083,W,0
        addwf 10,F,0
        movf 9,W,0
        return
proton#main#start
        movlb 0
F2_SOF equ $ ; TRANSPONDER.PRP
F2_EOF equ $ ; TRANSPONDER.PRP
F1_SOF equ $ ; TRANSPONDER.BAS
F1_000051 equ $ ; IN [TRANSPONDER.BAS] TRANSPONDER_MODE = LAB
        movlw 1
        movwf TRANSPONDER_MODE,0
F1_000057 equ $ ; IN [TRANSPONDER.BAS] TR_MD = TR_OFF
        movlw 2
        movwf TR_MD,0
F1_000060 equ $ ; IN [TRANSPONDER.BAS] ALL_DIGITAL   = TRUE
        clrf CM1CON0,0
        clrf CM2CON0,0
        clrf CM1CON,0
        clrf CM2CON,0
        movlw 15
        movwf ADCON1,0
        movlb 15
ram_bank = 15
        clrf ANSELA,1
        clrf ANSELB,1
        clrf ANSELC,1
F1_000071 equ $ ; IN [TRANSPONDER.BAS] TRISA.0 = 1
        bsf TRISA,0,0
F1_000072 equ $ ; IN [TRANSPONDER.BAS] TRISA.1 = 1
        bsf TRISA,1,0
F1_000073 equ $ ; IN [TRANSPONDER.BAS] TRISA.2 = 1
        bsf TRISA,2,0
F1_000074 equ $ ; IN [TRANSPONDER.BAS] TRISA.3 = 1
        bsf TRISA,3,0
F1_000075 equ $ ; IN [TRANSPONDER.BAS] TRISA.4 = 0
        bcf TRISA,4,0
F1_000076 equ $ ; IN [TRANSPONDER.BAS] TRISA.5 = 0
        bcf TRISA,5,0
F1_000078 equ $ ; IN [TRANSPONDER.BAS] TRISB.0 = 1
        bsf TRISB,0,0
F1_000079 equ $ ; IN [TRANSPONDER.BAS] TRISB.1 = 1
        bsf TRISB,1,0
F1_000080 equ $ ; IN [TRANSPONDER.BAS] TRISB.2 = 1
        bsf TRISB,2,0
F1_000081 equ $ ; IN [TRANSPONDER.BAS] TRISB.3 = 0
        bcf TRISB,3,0
F1_000082 equ $ ; IN [TRANSPONDER.BAS] TRISB.4 = 0
        bcf TRISB,4,0
F1_000083 equ $ ; IN [TRANSPONDER.BAS] TRISB.5 = 0
        bcf TRISB,5,0
F1_000084 equ $ ; IN [TRANSPONDER.BAS] TRISB.6 = 0
        bcf TRISB,6,0
F1_000085 equ $ ; IN [TRANSPONDER.BAS] TRISB.7 = 0
        bcf TRISB,7,0
F1_000087 equ $ ; IN [TRANSPONDER.BAS] TRISC.0 = 0
        bcf TRISC,0,0
F1_000088 equ $ ; IN [TRANSPONDER.BAS] TRISC.1 = 0
        bcf TRISC,1,0
F1_000089 equ $ ; IN [TRANSPONDER.BAS] TRISC.2 = 0
        bcf TRISC,2,0
F1_000090 equ $ ; IN [TRANSPONDER.BAS] TRISC.3 = 1
        bsf TRISC,3,0
F1_000091 equ $ ; IN [TRANSPONDER.BAS] TRISC.4 = 1
        bsf TRISC,4,0
F1_000092 equ $ ; IN [TRANSPONDER.BAS] TRISC.5 = 1
        bsf TRISC,5,0
F1_000093 equ $ ; IN [TRANSPONDER.BAS] TRISC.6 = 1
        bsf TRISC,6,0
F1_000094 equ $ ; IN [TRANSPONDER.BAS] TRISC.7 = 0
        bcf TRISC,7,0
F1_000133 equ $ ; IN [TRANSPONDER.BAS] SANIYEBEKLE = 15
        movwf SaniyeBekle,0
F1_000137 equ $ ; IN [TRANSPONDER.BAS] PWM_VAL= 5
        movlw 5
        movwf Pwm_val,0
F1_000182 equ $ ; IN [TRANSPONDER.BAS] SEN = 1
        bsf SSP1CON2,0,0
F1_000191 equ $ ; IN [TRANSPONDER.BAS] DELAYMS 500
        movlw 1
        movwf PP1H,0
        movlw 244
        f@call __DELAY_MS_W_
F1_000195 equ $ ; IN [TRANSPONDER.BAS] SLAVE_ADDRESS = $14
        movlw 20
        movwf Slave_Address,0
F1_000199 equ $ ; IN [TRANSPONDER.BAS] SSPADD = SLAVE_ADDRESS
        movff Slave_Address,SSPADD
F1_000200 equ $ ; IN [TRANSPONDER.BAS] SSPCON2 = 0
        clrf SSPCON2,0
F1_000201 equ $ ; IN [TRANSPONDER.BAS] SSPCON1 = $36
        movlw 54
        movwf SSPCON1,0
F1_000205 equ $ ; IN [TRANSPONDER.BAS] I2C_DATACOUNT = 0
        clrf I2C_DataCount,0
F1_000207 equ $ ; IN [TRANSPONDER.BAS] TMR1_ENABLE = 0
        bcf PIE1,0,0
F1_000209 equ $ ; IN [TRANSPONDER.BAS] PEIE = 1
        bsf INTCON,6,0
F1_000210 equ $ ; IN [TRANSPONDER.BAS] T1CON.1 = 0
        bcf T1CON,1,0
F1_000211 equ $ ; IN [TRANSPONDER.BAS] T1CON.4 = 0
        bcf T1CON,4,0
F1_000213 equ $ ; IN [TRANSPONDER.BAS] SSPIF = 0
        bcf PIR1,3,0
F1_000214 equ $ ; IN [TRANSPONDER.BAS] SSPIE = 1
        bsf PIE1,3,0
F1_000215 equ $ ; IN [TRANSPONDER.BAS] SMP = 1
        bsf SSPSTAT,7,0
F1_000218 equ $ ; IN [TRANSPONDER.BAS] TMR1_ENABLE = 1
        bsf PIE1,0,0
F1_000219 equ $ ; IN [TRANSPONDER.BAS] TMR1_ON = 1
        bsf T1CON,0,0
F1_000221 equ $ ; IN [TRANSPONDER.BAS] GIE = 1
        bsf INTCON,7,0
F1_000227 equ $ ; IN [TRANSPONDER.BAS] DURUM = 0
        clrf DURUM,0
F1_000231 equ $ ; IN [TRANSPONDER.BAS] PLLYAZ_LATCH = 1
        bsf _B#VR1,0,0
F1_000234 equ $ ; IN [TRANSPONDER.BAS] DUTYCYCLE = 0
        clrf DutyCycle,0
F1_000237 equ $ ; IN [TRANSPONDER.BAS] HPWM 1,PWM_VAL,2000
        movff Pwm_val,GEN
        movlw 7
        movwf PP1H,0
        movlw 208
        movwf PP1,0
        movlw 1
        f@call __HPWM_
F1_000239 equ $ ; IN [TRANSPONDER.BAS] GOTO PREMAIN
        movlb 0
ram_bank = 0
        f@jump PreMain
InterruptSection
F1_000244 equ $ ; IN [TRANSPONDER.BAS] CONTEXT SAVE
        movlb 0
        movff FSR0H,_High__Context_Store#0
        movff FSR0L,_High__Context_Store#1
        movff PBP#VAR0,_High__Context_Store#2
        movff SP#P9,_High__Context_Store#3
F1_000246 equ $ ; IN [TRANSPONDER.BAS] GIE = 0
        bcf INTCON,7,0
F1_000248 equ $ ; IN [TRANSPONDER.BAS] IF TMR1_OVERFLOW = 1 AND TMR1_ENABLE = 1 THEN
        movlw 0
        btfsc PIR1,0,0
        movlw 1
        movwf SP#P9,0
        movlw 0
        btfsc PIE1,0,0
        movlw 1
        andwf SP#P9,F,0
        btfsc STATUS,2,0
        go@to BC@LL3
F1_000249 equ $ ; IN [TRANSPONDER.BAS] TMR1_ENABLE = 0
        bcf PIE1,0,0
F1_000250 equ $ ; IN [TRANSPONDER.BAS] TIMER1 = TIMER1 + TMR1_VAL
        movlw 24
        addwf TMR1L,F,0
        movlw 252
        addwfc TMR1LH,F,0
F1_000251 equ $ ; IN [TRANSPONDER.BAS] TMR1_ENABLE = 1
        bsf PIE1,0,0
F1_000252 equ $ ; IN [TRANSPONDER.BAS] TMR1_OVERFLOW = 0
        bcf PIR1,0,0
F1_000253 equ $ ; IN [TRANSPONDER.BAS] MS = MS + TMR1_MS
        infsnz mS,F,0
        incf mSH,F,0
F1_000254 equ $ ; IN [TRANSPONDER.BAS] IF MS >= 1000 THEN
        movlw 232
        subwf mS,W,0
        movlw 3
        subwfb mSH,W,0
        btfss STATUS,0,0
        go@to BC@LL5
F1_000256 equ $ ; IN [TRANSPONDER.BAS] MS = 0
        clrf mSH,0
        clrf mS,0
F1_000257 equ $ ; IN [TRANSPONDER.BAS] S = S + 1
        infsnz _S,F,0
        incf _SH,F,0
F1_000258 equ $ ; IN [TRANSPONDER.BAS] IF S >= 59 THEN
        movf _SH,F,0
        btfss STATUS,2,0
        bra CP@LB3
        movlw 58
        cpfsgt _S,0
        f@jump BC@LL7
CP@LB3
F1_000259 equ $ ; IN [TRANSPONDER.BAS] S = 0
        clrf _SH,0
        clrf _S,0
F1_000260 equ $ ; IN [TRANSPONDER.BAS] MN = MN + 1
        incf mn,F,0
F1_000261 equ $ ; IN [TRANSPONDER.BAS] IF MN >= 59 THEN
        movlw 58
        cpfsgt mn,0
        f@jump BC@LL9
F1_000262 equ $ ; IN [TRANSPONDER.BAS] MN = 0
        clrf mn,0
F1_000263 equ $ ; IN [TRANSPONDER.BAS] HR = HR + 1
        incf hr,F,0
F1_000264 equ $ ; IN [TRANSPONDER.BAS] IF HR >= 24 THEN
        movlw 23
        cpfsgt hr,0
        f@jump BC@LL11
F1_000265 equ $ ; IN [TRANSPONDER.BAS] HR = 0
        clrf hr,0
F1_000266 equ $ ; IN [TRANSPONDER.BAS] DY = DY + 1
        incf dy,F,0
F1_000267 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL11
F1_000268 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL9
F1_000269 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL7
F1_000270 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL5
F1_000271 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL3
F1_000274 equ $ ; IN [TRANSPONDER.BAS] IF SSPIF = 1 THEN
        btfss PIR1,3,0
        go@to BC@LL13
F1_000275 equ $ ; IN [TRANSPONDER.BAS] SSPIF = 0
        bcf PIR1,3,0
F1_000277 equ $ ; IN [TRANSPONDER.BAS] IF SSPSTAT.4 = 1 THEN I2C_DATACOUNT = 0
        btfss SSPSTAT,4,0
        go@to BC@LL15
        clrf I2C_DataCount,0
BC@LL15
F1_000279 equ $ ; IN [TRANSPONDER.BAS] IF R_W = 1 THEN
        btfss SSPSTAT,2,0
        go@to BC@LL17
F1_000281 equ $ ; IN [TRANSPONDER.BAS] SSP1BUF = 0
        clrf SSP1BUF,0
F1_000282 equ $ ; IN [TRANSPONDER.BAS] SSP1BUF = DURUM
        movff DURUM,SSP1BUF
F1_000283 equ $ ; IN [TRANSPONDER.BAS] CKP = 1
        bsf SSPCON1,4,0
        f@jump BC@LL18
BC@LL17
F1_000284 equ $ ; IN [TRANSPONDER.BAS] ELSE
F1_000285 equ $ ; IN [TRANSPONDER.BAS] DURUM = 0XFF
        setf DURUM,0
F1_000286 equ $ ; IN [TRANSPONDER.BAS] IF BF = 1 THEN
        btfss SSPSTAT,0,0
        go@to BC@LL20
F1_000289 equ $ ; IN [TRANSPONDER.BAS] LASTDATA = SSPBUF
        movff SSPBUF,LastData
F1_000290 equ $ ; IN [TRANSPONDER.BAS] I2C_DATA[I2C_DATACOUNT] = LASTDATA
        lfsr 0,I2C_Data
        movf I2C_DataCount,W,0
        movff LastData,PLUSW0
F1_000291 equ $ ; IN [TRANSPONDER.BAS] S = 0
        clrf _SH,0
        clrf _S,0
F1_000292 equ $ ; IN [TRANSPONDER.BAS] MN = 0
        clrf mn,0
F1_000293 equ $ ; IN [TRANSPONDER.BAS] HR   = 0
        clrf hr,0
F1_000294 equ $ ; IN [TRANSPONDER.BAS] DY    = 0
        clrf dy,0
F1_000296 equ $ ; IN [TRANSPONDER.BAS] INC I2C_DATACOUNT
        incf I2C_DataCount,F,0
F1_000297 equ $ ; IN [TRANSPONDER.BAS] IF I2C_DATA[0] = 0X15 THEN
        movf I2C_Data#0,W,0
        movwf PBP#VAR0,0
        movlw 21
        cpfseq PBP#VAR0,0
        f@jump BC@LL22
F1_000299 equ $ ; IN [TRANSPONDER.BAS] TR_MD = TR_ON
        movlw 1
        movwf TR_MD,0
F1_000301 equ $ ; IN [TRANSPONDER.BAS] DURUM = 0X0A
        movlw 10
        movwf DURUM,0
F1_000302 equ $ ; IN [TRANSPONDER.BAS] I2C_DATACOUNT = 0
        clrf I2C_DataCount,0
F1_000303 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL22
F1_000304 equ $ ; IN [TRANSPONDER.BAS] IF I2C_DATA[0] = 0X16 THEN
        movf I2C_Data#0,W,0
        movwf PBP#VAR0,0
        movlw 22
        cpfseq PBP#VAR0,0
        f@jump BC@LL24
F1_000306 equ $ ; IN [TRANSPONDER.BAS] TR_MD = TR_OFF
        movlw 2
        movwf TR_MD,0
F1_000308 equ $ ; IN [TRANSPONDER.BAS] DURUM = 0X0A
        movlw 10
        movwf DURUM,0
F1_000309 equ $ ; IN [TRANSPONDER.BAS] I2C_DATACOUNT = 0
        clrf I2C_DataCount,0
F1_000310 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL24
F1_000311 equ $ ; IN [TRANSPONDER.BAS] IF I2C_DATA[0] = 0X17 THEN
        movf I2C_Data#0,W,0
        movwf PBP#VAR0,0
        movlw 23
        cpfseq PBP#VAR0,0
        f@jump BC@LL26
F1_000313 equ $ ; IN [TRANSPONDER.BAS] DURUM = 0XFF
        setf DURUM,0
F1_000314 equ $ ; IN [TRANSPONDER.BAS] IF TR_MD = TR_ON  THEN DURUM = 0X15
        decfsz TR_MD,W,0
        f@jump BC@LL28
        movlw 21
        movwf DURUM,0
BC@LL28
F1_000315 equ $ ; IN [TRANSPONDER.BAS] IF TR_MD = TR_OFF THEN DURUM = 0X16
        movlw 2
        cpfseq TR_MD,0
        f@jump BC@LL30
        movlw 22
        movwf DURUM,0
BC@LL30
F1_000316 equ $ ; IN [TRANSPONDER.BAS] I2C_DATACOUNT = 0
        clrf I2C_DataCount,0
F1_000317 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL26
F1_000318 equ $ ; IN [TRANSPONDER.BAS] IF I2C_DATA[0] = 0X18 THEN
        movf I2C_Data#0,W,0
        movwf PBP#VAR0,0
        movlw 24
        cpfseq PBP#VAR0,0
        f@jump BC@LL32
F1_000320 equ $ ; IN [TRANSPONDER.BAS] DURUM = TPS_AKIM
        movff TPS_Akim,DURUM
F1_000321 equ $ ; IN [TRANSPONDER.BAS] I2C_DATACOUNT = 0
        clrf I2C_DataCount,0
F1_000322 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL32
F1_000323 equ $ ; IN [TRANSPONDER.BAS] IF I2C_DATA[0] = 0X1A THEN
        movf I2C_Data#0,W,0
        movwf PBP#VAR0,0
        movlw 26
        cpfseq PBP#VAR0,0
        f@jump BC@LL34
F1_000325 equ $ ; IN [TRANSPONDER.BAS] PWM_VAL = 5
        movlw 5
        movwf Pwm_val,0
F1_000326 equ $ ; IN [TRANSPONDER.BAS] DURUM = PWM_VAL
        movff Pwm_val,DURUM
F1_000327 equ $ ; IN [TRANSPONDER.BAS] I2C_DATACOUNT = 0
        clrf I2C_DataCount,0
F1_000328 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL34
F1_000329 equ $ ; IN [TRANSPONDER.BAS] IF I2C_DATA[0] = 0X1B THEN
        movf I2C_Data#0,W,0
        movwf PBP#VAR0,0
        movlw 27
        cpfseq PBP#VAR0,0
        f@jump BC@LL36
F1_000331 equ $ ; IN [TRANSPONDER.BAS] PWM_VAL = 64
        movlw 64
        movwf Pwm_val,0
F1_000332 equ $ ; IN [TRANSPONDER.BAS] DURUM = PWM_VAL
        movff Pwm_val,DURUM
F1_000333 equ $ ; IN [TRANSPONDER.BAS] I2C_DATACOUNT = 0
        clrf I2C_DataCount,0
F1_000334 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL36
F1_000335 equ $ ; IN [TRANSPONDER.BAS] IF I2C_DATA[0] = 0X1C THEN
        movf I2C_Data#0,W,0
        movwf PBP#VAR0,0
        movlw 28
        cpfseq PBP#VAR0,0
        f@jump BC@LL38
F1_000337 equ $ ; IN [TRANSPONDER.BAS] PWM_VAL = 127
        movlw 127
        movwf Pwm_val,0
F1_000338 equ $ ; IN [TRANSPONDER.BAS] DURUM = PWM_VAL
        movff Pwm_val,DURUM
F1_000339 equ $ ; IN [TRANSPONDER.BAS] I2C_DATACOUNT = 0
        clrf I2C_DataCount,0
F1_000340 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL38
F1_000341 equ $ ; IN [TRANSPONDER.BAS] IF I2C_DATA[0] = 0X20 THEN
        movf I2C_Data#0,W,0
        movwf PBP#VAR0,0
        movlw 32
        cpfseq PBP#VAR0,0
        f@jump BC@LL40
F1_000343 equ $ ; IN [TRANSPONDER.BAS] DURUM = CIKIS_GUCU
        movff Cikis_Gucu,DURUM
F1_000344 equ $ ; IN [TRANSPONDER.BAS] I2C_DATACOUNT = 0
        clrf I2C_DataCount,0
F1_000345 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL40
F1_000346 equ $ ; IN [TRANSPONDER.BAS] IF SSPOV = 1 THEN SSPOV = 0
        btfss SSPCON1,6,0
        go@to BC@LL42
        bcf SSPCON1,6,0
BC@LL42
F1_000348 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL20
F1_000349 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL18
F1_000351 equ $ ; IN [TRANSPONDER.BAS] IF R_W = 0 AND SSPOV = 1 THEN  SSPOV = 0
        movlw 1
        btfsc SSPSTAT,2,0
        movlw 0
        movwf SP#P9,0
        movlw 0
        btfsc SSPCON1,6,0
        movlw 1
        andwf SP#P9,F,0
        btfsc STATUS,2,0
        go@to BC@LL44
        bcf SSPCON1,6,0
BC@LL44
F1_000352 equ $ ; IN [TRANSPONDER.BAS] CKP = 1
        bsf SSPCON1,4,0
F1_000353 equ $ ; IN [TRANSPONDER.BAS] IF R_W = 1 AND WCOL = 1 THEN WCOL = 0
        movlw 0
        btfsc SSPSTAT,2,0
        movlw 1
        movwf SP#P9,0
        movlw 0
        btfsc SSPCON1,7,0
        movlw 1
        andwf SP#P9,F,0
        btfsc STATUS,2,0
        go@to BC@LL46
        bcf SSPCON1,7,0
BC@LL46
F1_000354 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL13
F1_000357 equ $ ; IN [TRANSPONDER.BAS] GIE = 1
        bsf INTCON,7,0
F1_000359 equ $ ; IN [TRANSPONDER.BAS] CONTEXT RESTORE
        movff _High__Context_Store#0,FSR0H
        movff _High__Context_Store#1,FSR0L
        movff _High__Context_Store#2,PBP#VAR0
        movff _High__Context_Store#3,SP#P9
        retfie 1
PreMain
F1_000363 equ $ ; IN [TRANSPONDER.BAS] S = 0
        clrf _SH,0
        clrf _S,0
F1_000364 equ $ ; IN [TRANSPONDER.BAS] MN = 0
        clrf mn,0
F1_000365 equ $ ; IN [TRANSPONDER.BAS] HR   = 0
        clrf hr,0
F1_000366 equ $ ; IN [TRANSPONDER.BAS] DY    = 0
        clrf dy,0
F1_000369 equ $ ; IN [TRANSPONDER.BAS] LOW PLLPSRF
        bcf TRISB,6,0
        bcf LATB,6,0
F1_000370 equ $ ; IN [TRANSPONDER.BAS] LOW PLLPSIF
        bcf TRISB,7,0
        bcf LATB,7,0
F1_000371 equ $ ; IN [TRANSPONDER.BAS] DELAYMS 10
        movlw 10
        f@call __DELAY_MS_
F1_000372 equ $ ; IN [TRANSPONDER.BAS] LOW PLLLE
        bcf TRISB,5,0
        bcf LATB,5,0
F1_000373 equ $ ; IN [TRANSPONDER.BAS] HIGH PLLPSRF
        bcf TRISB,6,0
        bsf LATB,6,0
F1_000374 equ $ ; IN [TRANSPONDER.BAS] HIGH PLLPSIF
        bcf TRISB,7,0
        bsf LATB,7,0
F1_000379 equ $ ; IN [TRANSPONDER.BAS] IF TRANSPONDER_MODE = LAB THEN
        decfsz TRANSPONDER_MODE,W,0
        f@jump BC@LL48
F1_000380 equ $ ; IN [TRANSPONDER.BAS] LOW  TPS2421EN
        bcf TRISA,4,0
        bcf LATA,4,0
F1_000381 equ $ ; IN [TRANSPONDER.BAS] HIGH LD29300ENABLE
        bcf TRISC,0,0
        bsf LATC,0,0
F1_000382 equ $ ; IN [TRANSPONDER.BAS] TR_MD = TR_ON
        movlw 1
        movwf TR_MD,0
F1_000383 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL48
F1_000385 equ $ ; IN [TRANSPONDER.BAS] GOSUB PLL_PROGRAMLA
        f@call Pll_Programla
Main
F1_000388 equ $ ; IN [TRANSPONDER.BAS] IF DY >= 14 THEN
        movlw 13
        cpfsgt dy,0
        f@jump BC@LL50
F1_000389 equ $ ; IN [TRANSPONDER.BAS] IF DY < 20 THEN
        movlw 20
        cpfslt dy,0
        f@jump BC@LL52
F1_000390 equ $ ; IN [TRANSPONDER.BAS] TR_MD = TR_ON
        movlw 1
        movwf TR_MD,0
F1_000391 equ $ ; IN [TRANSPONDER.BAS] IF MN  > 5 THEN
        movlw 6
        subwf mn,W,0
        btfss STATUS,0,0
        go@to BC@LL54
F1_000392 equ $ ; IN [TRANSPONDER.BAS] TR_MD = TR_OFF
        movlw 2
        movwf TR_MD,0
        f@jump BC@LL53
F1_000393 equ $ ; IN [TRANSPONDER.BAS] ELSE IF MN > 15 THEN
BC@LL54
        movlw 16
        subwf mn,W,0
        btfss STATUS,0,0
        go@to BC@LL55
F1_000394 equ $ ; IN [TRANSPONDER.BAS] TR_MD = TR_ON
        movlw 1
        movwf TR_MD,0
        f@jump BC@LL53
F1_000395 equ $ ; IN [TRANSPONDER.BAS] ELSE IF MN > 20 THEN
BC@LL55
        movlw 21
        subwf mn,W,0
        btfss STATUS,0,0
        go@to BC@LL56
F1_000396 equ $ ; IN [TRANSPONDER.BAS] TR_MD = TR_OFF
        movlw 2
        movwf TR_MD,0
        f@jump BC@LL53
F1_000397 equ $ ; IN [TRANSPONDER.BAS] ELSE IF MN > 30 THEN
BC@LL56
        movlw 31
        subwf mn,W,0
        btfss STATUS,0,0
        go@to BC@LL57
F1_000398 equ $ ; IN [TRANSPONDER.BAS] TR_MD = TR_ON
        movlw 1
        movwf TR_MD,0
        f@jump BC@LL53
F1_000399 equ $ ; IN [TRANSPONDER.BAS] ELSE IF MN > 35 THEN
BC@LL57
        movlw 36
        subwf mn,W,0
        btfss STATUS,0,0
        go@to BC@LL58
F1_000400 equ $ ; IN [TRANSPONDER.BAS] TR_MD = TR_OFF
        movlw 2
        movwf TR_MD,0
        f@jump BC@LL53
F1_000401 equ $ ; IN [TRANSPONDER.BAS] ELSE IF MN > 45 THEN
BC@LL58
        movlw 46
        subwf mn,W,0
        btfss STATUS,0,0
        go@to BC@LL59
F1_000402 equ $ ; IN [TRANSPONDER.BAS] TR_MD = TR_ON
        movlw 1
        movwf TR_MD,0
        f@jump BC@LL53
F1_000403 equ $ ; IN [TRANSPONDER.BAS] ELSE IF MN > 50 THEN
BC@LL59
        movlw 51
        subwf mn,W,0
        btfss STATUS,0,0
        go@to BC@LL60
F1_000404 equ $ ; IN [TRANSPONDER.BAS] TR_MD = TR_OFF
        movlw 2
        movwf TR_MD,0
F1_000405 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL60
BC@LL53
        f@jump BC@LL61
BC@LL52
F1_000406 equ $ ; IN [TRANSPONDER.BAS] ELSE
F1_000407 equ $ ; IN [TRANSPONDER.BAS] TR_MD = TR_OFF
        movlw 2
        movwf TR_MD,0
F1_000409 equ $ ; IN [TRANSPONDER.BAS] DY = 7
        movlw 7
        movwf dy,0
F1_000410 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL61
F1_000411 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL50
F1_000417 equ $ ; IN [TRANSPONDER.BAS] FOR SAY = 1 TO 20
        movlw 1
        movwf say,0
FR@LB62
        movlw 21
        cpfslt say,0
        f@jump NX@LB63
F1_000419 equ $ ; IN [TRANSPONDER.BAS] IF TR_MD = TR_ON THEN
        decfsz TR_MD,W,0
        f@jump BC@LL66
F1_000420 equ $ ; IN [TRANSPONDER.BAS] LOW  TPS2421EN
        bcf TRISA,4,0
        bcf LATA,4,0
F1_000421 equ $ ; IN [TRANSPONDER.BAS] HIGH LD29300ENABLE
        bcf TRISC,0,0
        bsf LATC,0,0
        f@jump BC@LL67
BC@LL66
F1_000422 equ $ ; IN [TRANSPONDER.BAS] ELSE
F1_000423 equ $ ; IN [TRANSPONDER.BAS] HIGH TPS2421EN
        bcf TRISA,4,0
        bsf LATA,4,0
F1_000424 equ $ ; IN [TRANSPONDER.BAS] LOW LD29300ENABLE
        bcf TRISC,0,0
        bcf LATC,0,0
F1_000426 equ $ ; IN [TRANSPONDER.BAS] ENDIF
BC@LL67
F1_000428 equ $ ; IN [TRANSPONDER.BAS] TPS_AKIM = ADIN 1
        movlw 1
        f@call __ADIN_
        movwf TPS_Akim,0
        movff PP7H,TPS_AkimH
F1_000429 equ $ ; IN [TRANSPONDER.BAS] TPS_AKIM = TPS_AKIM >> 2
        bcf STATUS,0,0
        rrcf TPS_AkimH,F,0
        rrcf TPS_Akim,F,0
        bcf STATUS,0,0
        rrcf TPS_AkimH,F,0
        rrcf TPS_Akim,F,0
F1_000433 equ $ ; IN [TRANSPONDER.BAS] CIKIS_GUCU = ADIN 2
        movlw 2
        f@call __ADIN_
        movwf Cikis_Gucu,0
        movff PP7H,Cikis_GucuH
F1_000434 equ $ ; IN [TRANSPONDER.BAS] CIKIS_GUCU = CIKIS_GUCU >> 2
        bcf STATUS,0,0
        rrcf Cikis_GucuH,F,0
        rrcf Cikis_Gucu,F,0
        bcf STATUS,0,0
        rrcf Cikis_GucuH,F,0
        rrcf Cikis_Gucu,F,0
F1_000448 equ $ ; IN [TRANSPONDER.BAS] DELAYMS 250
        movlw 250
        f@call __DELAY_MS_
F1_000449 equ $ ; IN [TRANSPONDER.BAS] TOGGLE TPS3823WDI
        btg PORTC,1,0
        bcf TRISC,1,0
F1_000450 equ $ ; IN [TRANSPONDER.BAS] DELAYMS 250
        movlw 250
        f@call __DELAY_MS_
F1_000451 equ $ ; IN [TRANSPONDER.BAS] TOGGLE TPS3823WDI
        btg PORTC,1,0
        bcf TRISC,1,0
F1_000452 equ $ ; IN [TRANSPONDER.BAS] TOGGLE PORTB.0
        btg PORTB,0,0
        bcf TRISB,0,0
CT@LB64
F1_000453 equ $ ; IN [TRANSPONDER.BAS] NEXT SAY
        incf say,F,0
        btfss STATUS,0,0
        go@to FR@LB62
NX@LB63
F1_000456 equ $ ; IN [TRANSPONDER.BAS] GOSUB PLL_PROGRAMLA
        f@call Pll_Programla
F1_000465 equ $ ; IN [TRANSPONDER.BAS] GOTO MAIN
        f@jump Main
Pll_Programla
F1_000476 equ $ ; IN [TRANSPONDER.BAS] DATAOUT =  %000000000000000100110000010000
        clrf DataOutHHH,0
        clrf DataOutHH,0
        movlw 76
        movwf DataOutH,0
        movlw 16
        movwf DataOut,0
F1_000477 equ $ ; IN [TRANSPONDER.BAS] GOSUB PLLGONDER
        f@call Pllgonder
F1_000480 equ $ ; IN [TRANSPONDER.BAS] DATAOUT =  %000000001101100000011110101101
        clrf DataOutHHH,0
        movlw 54
        movwf DataOutHH,0
        movlw 7
        movwf DataOutH,0
        movlw 173
        movwf DataOut,0
F1_000481 equ $ ; IN [TRANSPONDER.BAS] GOSUB     PLLGONDER
        f@call Pllgonder
F1_000486 equ $ ; IN [TRANSPONDER.BAS] DATAOUT =  %000000010000000010100000010000
        clrf DataOutHHH,0
        movlw 64
        movwf DataOutHH,0
        movlw 40
        movwf DataOutH,0
        movlw 16
        movwf DataOut,0
F1_000487 equ $ ; IN [TRANSPONDER.BAS] GOSUB PLLGONDER
        f@call Pllgonder
F1_000490 equ $ ; IN [TRANSPONDER.BAS] DATAOUT =  %000000011011111101010011011000
        clrf DataOutHHH,0
        movlw 111
        movwf DataOutHH,0
        movlw 212
        movwf DataOutH,0
        movlw 216
        movwf DataOut,0
F1_000491 equ $ ; IN [TRANSPONDER.BAS] GOSUB     PLLGONDER
        f@call Pllgonder
F1_000493 equ $ ; IN [TRANSPONDER.BAS] RETURN
        return 0
Pllgonder
F1_000503 equ $ ; IN [TRANSPONDER.BAS] FOR SAYAC = 1 TO 23
        movlw 1
        movwf sayac,0
FR@LB68
        movlw 24
        cpfslt sayac,0
        f@jump NX@LB69
F1_000504 equ $ ; IN [TRANSPONDER.BAS] LOW PLLDATA
        bcf TRISB,4,0
        bcf LATB,4,0
F1_000505 equ $ ; IN [TRANSPONDER.BAS] IF (DATAOUT & 1) = 1 THEN HIGH PLLDATA
        movlw 1
        andwf DataOut,W,0
        clrf PBP#VAR0HHH,0
        clrf PBP#VAR0HH,0
        clrf PBP#VAR0H,0
        movwf PBP#VAR0,0
        decf PBP#VAR0,W,0
        iorwf PBP#VAR0H,W,0
        iorwf PBP#VAR0HH,W,0
        iorwf PBP#VAR0HHH,W,0
        btfss STATUS,2,0
        go@to BC@LL72
        bcf TRISB,4,0
        bsf LATB,4,0
BC@LL72
F1_000506 equ $ ; IN [TRANSPONDER.BAS] DATAOUT = DATAOUT >> 1
        bcf STATUS,0,0
        rrcf DataOutHHH,F,0
        rrcf DataOutHH,F,0
        rrcf DataOutH,F,0
        rrcf DataOut,F,0
F1_000507 equ $ ; IN [TRANSPONDER.BAS] DELAYUS 10
        movlw 3
        decfsz WREG,F,0
        bra $ - 2
        nop
        nop
F1_000508 equ $ ; IN [TRANSPONDER.BAS] HIGH PLLCLK
        bcf TRISB,3,0
        bsf LATB,3,0
F1_000509 equ $ ; IN [TRANSPONDER.BAS] DELAYUS 10
        movlw 3
        decfsz WREG,F,0
        bra $ - 2
        nop
        nop
F1_000510 equ $ ; IN [TRANSPONDER.BAS] LOW PLLCLK
        bcf TRISB,3,0
        bcf LATB,3,0
F1_000511 equ $ ; IN [TRANSPONDER.BAS] DELAYUS 10
        movlw 3
        decfsz WREG,F,0
        bra $ - 2
        nop
        nop
CT@LB70
F1_000512 equ $ ; IN [TRANSPONDER.BAS] NEXT SAYAC
        incf sayac,F,0
        btfss STATUS,0,0
        go@to FR@LB68
NX@LB69
F1_000514 equ $ ; IN [TRANSPONDER.BAS] HIGH PLLLE
        bcf TRISB,5,0
        bsf LATB,5,0
F1_000515 equ $ ; IN [TRANSPONDER.BAS] DELAYUS 10
        movlw 3
        decfsz WREG,F,0
        bra $ - 2
        nop
        nop
F1_000516 equ $ ; IN [TRANSPONDER.BAS] LOW PLLLE
        bcf TRISB,5,0
        bcf LATB,5,0
F1_000517 equ $ ; IN [TRANSPONDER.BAS] DELAYUS 10
        movlw 3
        decfsz WREG,F,0
        bra $ - 2
        nop
        nop
F1_000519 equ $ ; IN [TRANSPONDER.BAS] RETURN
        return 0
F1_EOF equ $ ; TRANSPONDER.BAS
PB@LB73
        bra PB@LB73
__EOF
config FOSC = XT
config PLLCFG = off
config PRICLKEN = on
config FCMEN = off
config IESO = off
config PWRTEN = on
config BOREN = SBORDIS
config BORV = 190
config WDTEN = off
config WDTPS = 128
config CCP2MX = PORTC1
config STVREN = off
config LVP = off
config MCLRE = INTMCLR
config CP0 = off
config CP1 = off
config CPB = off
config CPD = off
config WRT0 = off
config WRT1 = off
config WRTB = off
config WRTC = off
config WRTD = off
config EBTR0 = off
config EBTR1 = off
config EBTRB = off
        end
