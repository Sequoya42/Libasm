;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/30 00:05:37 by rbaum             #+#    #+#              ;
;    Updated: 2015/03/30 00:11:09 by rbaum            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	section .text
			global ft_isprint

	ft_isprint:
		mov rax, 1
		cmp rdi, 32
		jl exit
		cmp rdi, 126
		jg exit
		ret

	exit:
		mov rax, 0
		ret

