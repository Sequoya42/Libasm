;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/26 20:11:27 by rbaum             #+#    #+#              ;
;    Updated: 2015/03/26 23:49:53 by rbaum            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
	
	section .text
			global ft_bzero

	ft_bzero:
			cmp 	rsi, 0
			dec		rsi
			cmp		rdi, 0
			je		exit
			mov		byte[rdi + rsi], 0
			dec		rsi
			jmp		ft_bzero
	exit:
		ret