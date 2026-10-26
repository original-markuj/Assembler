.data
	b dw 8
	d dd 12
	a dd 16
.data?
	t dd ?
.code
main PROC
	xor eax,eax
	mov eax,2
	imul b
	sub eax,d
	add eax,23
	mov t,eax
	mov eax,a
	mov bl,4
	div bl
	sub eax,1
	mov ebx,eax
	mov eax,t
	cdq
	idiv ebx
ret
main ENDP
END