;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/27 02:20:24 by rbaum             #+#    #+#              ;
;    Updated: 2015/03/27 17:11:39 by rbaum            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	section .text
	global	ft_isalpha

	ft_isalpha:

		cmp	rdi, 'A'
		jl false
		cmp rdi, 'z'
		jg false
		cmp rdi, 'Z'
		jg min
		jmp true

	min:
	cmp rdi, 'a'
	jl false
	jmp true


	true:
	mov rax, 1
	ret
	
	false:
	mov rax, 0
	ret