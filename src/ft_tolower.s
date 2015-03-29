;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/30 00:20:07 by rbaum             #+#    #+#              ;
;    Updated: 2015/03/30 00:25:37 by rbaum            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	section .text
	global	ft_tolower

	ft_tolower:
			mov rax, rdi
			cmp rdi, 'A'
			jl fail
			cmp rdi, 'Z'
			jg fail
			add rax, 32
			ret

	fail:
	ret