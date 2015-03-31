;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/31 01:49:17 by rbaum             #+#    #+#              ;
;    Updated: 2015/03/31 02:17:34 by rbaum            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	section .text
	global 	ft_cat

	ft_cat:
	    mov        r8, rdi
	    lea        rsi, [rel buf] ;rel : force nasm to use RIP relative adressing

	.reset_fd:
	    mov        rdi, r8

	.loop:
	    mov        rdx, buflen
	    mov        rax, 0x2000003 ; read
	    syscall
	    jc        .error
	    cmp        rax, 0 		; read all ?
	    je        .end
	    mov        rdi, 1 		; fd
	    mov        rdx, rax 	; len
	    mov        rax, 0x2000004 ; write
	    syscall
	    jmp        .reset_fd

	.error:
	.end:
	    ret

	section .bss				;variable uninitialised 
	buf:	    resb 256		;reserve byte
	buflen:	    equ $-buf		;get length of buffer