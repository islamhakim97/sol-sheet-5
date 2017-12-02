.586
.MODEL FLAT
.STACK 4096
INCLUDE io.h
.DATA
prompt1  byte "Enter grade",0
prompt2  byte  "Enter weigth",0
prompt3  byte "result weigthed sum",0
grade   dword ?
weigth  dword ?
sum1    dword ?
sum2    dword ?
weightedofsum  dword ?
weigthedaverage  dword ?

.CODE
 _MainProc Proc

       mov ecx,4
	
   my_count:
    input prompt1,grade,40
    atod grade
    mov grade ,eax

    input prompt2 ,weigth,40
    atod weigth
	add weightedofsum ,eax
    mul   grade
	add  sum1 ,eax
	loop my_count
	  mov edx ,0
	  mov eax ,sum1
	  mov ebx ,weightedofsum
	  div ebx
	  dtoa weigthedaverage ,eax
	  output prompt1 ,weigthedaverage

	  mov eax ,weightedofsum
	  dtoa  weightedofsum ,eax
	  output prompt1 ,weightedofsum
	
	mov  eax ,sum1
	dtoa sum1,eax

	output prompt3,sum1

	
	
	                                                    
     ret
_MainProc ENDP
    END