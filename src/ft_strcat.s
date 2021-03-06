;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/31 00:40:39 by rbaum             #+#    #+#              ;
;    Updated: 2015/03/31 01:20:54 by rbaum            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	
	section .text
	global	ft_strcat
	extern	ft_strlen
	extern	ft_memcpy

	
	ft_strcat:
		push rdi
		mov rax, 0
		cmp rdi, 0
		je exit
		cmp rsi, 0
		je exit					;all of the above is security

		call ft_strlen			;strlen(s1)
		mov r12, rax			; lenght of s1 in r12
		
		mov rdi, rsi
		call ft_strlen	
		inc rax					;for '\0'

		mov rdx, rax			;lenght of s2 in rdx
		pop rdi					;put initial value of rdi in rdi
		push rdi
		add rdi, r12			;go to end of chain
		call ft_memcpy


	exit:
	pop rax
	ret
