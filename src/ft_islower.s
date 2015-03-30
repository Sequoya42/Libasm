;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_islower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/30 16:48:22 by rbaum             #+#    #+#              ;
;    Updated: 2015/03/30 16:49:05 by rbaum            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	section .text
	global ft_islower

	ft_islower:
			mov rax, 1
			cmp rdi, 'a'
			jl fail
			cmp rdi, 'z'
			jg fail
			ret

	fail:
	mov rax, 0
	ret