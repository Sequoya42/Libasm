;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/30 22:06:19 by rbaum             #+#    #+#              ;
;    Updated: 2015/03/30 22:44:09 by rbaum            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	;  void *    memcpy(void *restrict dst, const void *restrict src, size_t n) ;
	;; rax					rdi,				rsi,					,rdx
	section .text
	global ft_memcpy

	ft_memcpy:
			push rdi
			cmp rdi, 0
			je exit
			cmp rsi, 0
			je exit
			cmp rdx, 0
			jle exit
			lea rax, [rsi]
			mov rcx, rdx
			rep movsb


	exit:
	pop rax
		ret
	