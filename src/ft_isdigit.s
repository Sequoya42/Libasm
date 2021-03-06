;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/25 07:26:18 by rbaum             #+#    #+#              ;
;    Updated: 2015/03/27 01:30:21 by rbaum            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	section .text
			global ft_isdigit

	ft_isdigit:
			mov rax, 1
			cmp rdi, '0'
			jl	exit
			cmp rdi, '9'
			jg exit
			ret
	
	exit:
		mov rax, 0
		ret
	