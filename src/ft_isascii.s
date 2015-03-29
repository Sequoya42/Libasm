;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/29 23:45:21 by rbaum             #+#    #+#              ;
;    Updated: 2015/03/30 00:05:19 by rbaum            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	section .text
			global ft_isascii

	ft_isascii:
			mov rax, 1
			cmp rdi, 0
			jl	exit
			cmp rdi, 127
			jg exit
			ret

	exit:
		mov rax, 0
		ret