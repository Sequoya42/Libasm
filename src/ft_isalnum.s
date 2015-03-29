;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/27 17:28:56 by rbaum             #+#    #+#              ;
;    Updated: 2015/03/27 17:58:29 by rbaum            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	section .text
	global	ft_isalnum

	extern ft_isalpha
	extern ft_isdigit
	
	ft_isalnum:
	call	ft_isalpha
	cmp		rax, 1
	je		 exit
	call	ft_isdigit

	exit:	
	ret