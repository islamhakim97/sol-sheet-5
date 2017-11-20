.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
		x1 DWORD ?
		x2 DWORD ?
		x3 DWORD ?
		x4 DWORD ?
		m1 BYTE "enter frist grade",0
		m2 BYTE "enter second grade",0
		m3 BYTE "enter 3th grade",0
		m4 BYTE "enter 4th grade",0
		inp BYTE 40 DUP(?)
		t   BYTE "the sum is ",0
		m5 BYTE "the sum is "
		
		sum BYTE 11 DUP(?)
			BYTE " in decimal",0
			m6 BYTE "the avrage is",0
		avg BYTE 11 DUP(?),0
.CODE
  MainProc PROC
	input m1,inp,40
	atod inp
	mov x1,eax

	input m2,inp,40
	atod inp
	mov x2,eax

	input m3,inp,40
	atod inp
	mov x3,eax

	input m4,inp ,40
	atod inp
	mov x4 ,eax
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	mov eax,x1
	add eax,x2
	add eax,x3
	add eax,x4
	dtoa sum,eax
	output t,m5
	atod sum
	mov cx,4
	;cdq
	cwd
	div cx
	dtoa avg,eax
	output m6,avg

	mov eax ,0
	ret
  MainProc ENDP
  END



	
