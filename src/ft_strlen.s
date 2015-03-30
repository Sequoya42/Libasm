;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/30 19:19:49 by rbaum             #+#    #+#              ;
;    Updated: 2015/03/30 21:20:00 by rbaum            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	section .text
	global ft_strlen

	ft_strlen:
		xor rcx, rcx				;all byte of rcx set to 0
		mov rax, 0
		cmp rdi, 0
		je exit
		not rcx					; all byte of rcx set to 1
		repne scasb
		not rcx					
		lea rax, [rcx - 1]
		
	exit:
	ret