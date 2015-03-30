;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/30 20:30:20 by rbaum             #+#    #+#              ;
;    Updated: 2015/03/30 22:05:41 by rbaum            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	; void*       ft_memset(void *b, int c, size_t len);
	
	section .text
	global ft_memset

	ft_memset:
		push rdi
		cmp rdx, 0
		jle exit
		cmp	rdi, 0
		je exit
		mov rax, rsi			; needed by stosb to copy rax to rdi
		mov rcx, rdx			;rcx = counter ; needed by rep
		rep stosb

	exit:
		pop rdi
		mov rax, rdi
		ret
