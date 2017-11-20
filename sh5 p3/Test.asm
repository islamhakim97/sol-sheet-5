.586
.MODEL FLAT 
INCLUDE io.h
.STACK 4096
.DATA
	x  DWORD ?
	Y  DWORD ?
	m1  BYTE "enter x",0
	m2  BYTE "enter y",0
	inp BYTE	40 DUP(?)
	sum  BYTE 11 DUP(?),0
	m3  BYTE "the perimeter is ",0
.CODE
	_MainProc PROC
	INPUT m1,inp,40
	atod inp
	add eax,eax
	mov x,eax
	INPUT m2,inp,40
	atod inp
	add eax,eax
	add eax,x
	;mov sum,eax
	dtoa sum,eax
	
	OUTPUT m3,sum
	mov eax,0
	ret
_MainProc Endp
END
; ال error دايما بيحصل بعد ما اضيف ال5 فايلات بتوع الاسمبلى لكن قبل ما اضيفه بsiccess build



	







