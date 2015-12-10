;----------------------------------------------------------------------
; File : macros.inc
; 	Macros for MPASM
;
; Author:
;	Robert F. Nee
;	robnee@robnee.com
;
; Revisions:
;	last delta :  02/04/04 20:13:28
;
; 1/6/04
; Redesigned switch case to jump out of the switch statement if
; endcase is used.  endcase can be omitted after the last case for
; efficiency
;
;		noexpand

;----------------------------------------------------------------------
; Variables for macros

		variable _labelcount = 0
		variable _blockdepth = 0
		variable _switchdepth = 0
		variable _casecount = 0
		variable _ifdepth = 0
		variable _bankflag = 0

;----------------------------------------------------------------------
; bank0 - switch to register bank 0



bank0		macro
		bcf	STATUS, RP0
		bcf	STATUS, RP1
		endm

;----------------------------------------------------------------------
; bank1 - switch to register bank 1

bank1		macro
           bcf	STATUS, RP1
		bsf	STATUS, RP0
		endm

;----------------------------------------------------------------------
; Save and restore registers

int_save	macro
		movwf	w_temp
		swapf	STATUS, w
		movwf	status_temp
		endm

int_restore	macro
		swapf	status_temp, w
		movwf	STATUS

		swapf	w_temp, f
		swapf	w_temp, w
		endm

;----------------------------------------------------------------------
; beq - Branch equal

beq		macro	address
		btfsc	STATUS, Z
		goto	address
		endm

;----------------------------------------------------------------------
; bne - Branch not equal

bne		macro	address
		btfss	STATUS, Z
		goto	address
		endm

;----------------------------------------------------------------------

beginif		macro
_ifdepth += 1
_labelcount += 1
_ifnum#v(_ifdepth) = _labelcount
			endm

;----------------------------------------------------------------------
; ifweq - if W = <val> do block else do other block

ifweq	macro	val
		beginif
		sublw	val
		btfss	STATUS, Z
		goto	_if#v(_ifnum#v(_ifdepth))
		endm

ifwne	macro	val
		beginif
		sublw	val
		btfsc	STATUS, Z
		goto	_if#v(_ifnum#v(_ifdepth))
		endm

;----------------------------------------------------------------------
; ifeq - if <var> = <val> do block else do other block

ifeq	macro	var, val
		beginif
		movfw	var
		sublw	val
		btfss	STATUS, Z
		goto	_if#v(_ifnum#v(_ifdepth))
		endm

ifne	macro	var, val
		beginif
		movfw	var
		sublw	val
		btfsc	STATUS, Z
		goto	_if#v(_ifnum#v(_ifdepth))
		endm

ifgt	macro	var, val
		beginif
		movfw	var
		sublw	val
		btfsc	STATUS, C
		goto	_if#v(_ifnum#v(_ifdepth))
		endm

iflt	macro	var, val
		beginif
		movfw	var
		sublw	val - 1
		btfss	STATUS, C
		goto	_if#v(_ifnum#v(_ifdepth))
		endm

ifle	macro	var, val
		beginif
		movfw	var
		sublw	val
		btfss	STATUS, C
		goto	_if#v(_ifnum#v(_ifdepth))
		endm

ifz		macro	
		beginif
		btfss	STATUS, Z
		goto	_if#v(_ifnum#v(_ifdepth))
		endm

ifnz	macro	
		beginif
		btfsc	STATUS, Z
		goto	_if#v(_ifnum#v(_ifdepth))
		endm

ifbs	macro	reg, bit
		beginif
		btfss	reg, bit
		goto	_if#v(_ifnum#v(_ifdepth))
		endm

ifbc	macro	reg, bit
		beginif
		btfsc	reg, bit
		goto	_if#v(_ifnum#v(_ifdepth))
		endm

ifvgt	macro	rega, regb
		beginif
		movf	rega, w
		subwf	regb, w
		btfsc	STATUS, C
		goto	_if#v(_ifnum#v(_ifdepth))
		endm

else_	macro
_labelcount += 1
		goto	_if#v(_labelcount)
_if#v(_ifnum#v(_ifdepth))
_ifnum#v(_ifdepth) = _labelcount
		endm

endif_	macro
_if#v(_ifnum#v(_ifdepth))
_ifdepth -= 1
		endm

;----------------------------------------------------------------------
; begin/endblock - housekeeping for the beginning and end of program blocks

beginblock	macro
_blockdepth += 1
_labelcount += 1
_blocknum#v(_blockdepth) = _labelcount
		endm

endblock	macro
_endblock#v(_blocknum#v(_blockdepth))
_blockdepth -= 1
		endm

;----------------------------------------------------------------------
; loop - loop endlessly

loop		macro
		beginblock
_looptest#v(_blocknum#v(_blockdepth))
_loop#v(_blocknum#v(_blockdepth))
		endm

endloop		macro
		redo
		endblock
		endm

;----------------------------------------------------------------------
; from - Count <var> down from <start> to zero

from		macro	var, start
		beginblock
		movlw	start
		movwf	var
_loop#v(_blocknum#v(_blockdepth))
_loopvar#v(_blockdepth) = var
		endm

;----------------------------------------------------------------------
; from - Count <var> down from value in <reg> to zero

fromf		macro	var, reg
		beginblock
		movfw	reg
		movwf	var
		addlw	0			; Test for null loop
		btfsc	STATUS, Z
		break
_loop#v(_blocknum#v(_blockdepth))
_loopvar#v(_blockdepth) = var
		endm
;----------------------------------------------------------------------
; from - Count <var> down from value in W to zero

fromw		macro	var
		beginblock
		movwf	var
		addlw	0			; Test for null loop
		btfsc	STATUS, Z
		break
_loop#v(_blocknum#v(_blockdepth))
_loopvar#v(_blockdepth) = var
		endm

;----------------------------------------------------------------------

endfrom		macro
_looptest#v(_blocknum#v(_blockdepth))
		decfsz	_loopvar#v(_blockdepth), f
		redo
		endblock
		endm

;----------------------------------------------------------------------
; from16 - Count 16bit <var> down from <start> to zero

from16		macro	var, start
		beginblock
		movlw	LOW start
		movwf	var
		movlw	HIGH (start - 1) + 1
		movwf	var + 1
_loop#v(_blocknum#v(_blockdepth))
_loopvar#v(_blockdepth) = var
		endm

endfrom16	macro
_looptest#v(_blocknum#v(_blockdepth))
		decfsz	_loopvar#v(_blockdepth), f
		 redo
		decfsz	_loopvar#v(_blockdepth) + 1, f
		 redo
		endblock
		endm

;----------------------------------------------------------------------
; for - loop <var> from <start> to <stop> inclusive

for		macro	var, start, stop
		beginblock
		movlw	start
		movwf	var
		goto	$ + 2		; skip over the increment first time
_looptest#v(_blocknum#v(_blockdepth))
		if stop > start		; increment or decrement
		 incf	var, f
		 movfw	var
		 sublw	stop
		 btfss	STATUS, C
		else
		 decf	var, f
		 movfw	var
		 sublw	stop - 1
		 btfsc	STATUS, C
		endif
		break
_loop#v(_blocknum#v(_blockdepth))
_loopvar#v(_blockdepth) = var
		endm

next		macro
		continue
		endblock
		endm

;----------------------------------------------------------------------
; break - break out of the current block

break		macro
		goto	_endblock#v(_blocknum#v(_blockdepth))
		endm

;----------------------------------------------------------------------
; continue - jump to the next loop iteration

continue	macro
		goto	_looptest#v(_blocknum#v(_blockdepth))
		endm

;----------------------------------------------------------------------
; redo - jump to the beginning of the block bypassing any loop test code

redo		macro
		goto _loop#v(_blocknum#v(_blockdepth))
		endm

;----------------------------------------------------------------------
; switch/case - simulates C-style switch and case statements.  Value
; to be tested is in W.  break is used to exit each case.

switch	macro
_casecount += 1
_labelcount += 1
_switchdepth += 1
_switchnum#v(_switchdepth) = _labelcount
		endm

endswitch	macro
_endswitch#v(_switchnum#v(_switchdepth))
_case#v(_casecount)
_switchdepth -= 1
		endm

case		macro	val
_caseval = val
		xorlw	val
		bne	_case#v(_casecount)
		endm

endcase		macro
		goto	_endswitch#v(_switchnum#v(_switchdepth))
_case#v(_casecount)
_casecount += 1
		xorlw	_caseval		; restore previous value of W
		endm

default		macro
		endm
		
