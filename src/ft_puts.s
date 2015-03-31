;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/31 02:45:29 by rbaum             #+#    #+#              ;
;    Updated: 2015/03/31 03:30:22 by rbaum            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

		;;     int        puts(const char *s)
	global ft_puts
	extern ft_strlen
	section .text

	ft_puts:
	    cmp        rdi, 0 		; s != NULL ?
	    je        .null
	    xor        rax, rax 	; ret = 0
	    push    rdi 			; save s

	.print:
	    call    ft_strlen
	    mov        rdx, rax 	; len
	    mov        rdi, 1 		; STDOUT
	    pop        rsi 			; char *s (mov rdi, rsi)
	    mov        rax, 0x2000004 ; write
	    syscall
	    jmp        .line

	.null:
	    lea        rcx, [rel null] ; first byte of (null)
	    mov        rdi, 1
	    mov        rsi, rcx
	    mov        rdx, null_l	; longueur de null
	    mov        rax, 0x2000004
	    syscall

	.line:
	    mov        rdi, 0xA		   ;10 = ascii value of \n
	    lea        rcx, [rel char] ; write(1, &c, 1)
	    mov        [rcx], rdi	   ;could use dil (8 bit version of rdi since only \n)
	    mov        rdi, 1 		; fd
	    mov        rsi, rcx
	    mov        rdx, 1
	    mov        rax, 0x2000004
	    syscall
		mov rax, 10
	    ret

	section .data
	null:	    db "(null)"
	null_l:	    equ $-null 			; string lenght

	section    .bss
char:	    resb 0x1