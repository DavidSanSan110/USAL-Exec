.module imprimir_cadena
.globl	imprimir_cadena

imprimir_cadena:
	lda	#1
	reccad:
		beq	nreccad
		lda	,x+
		sta 	0xFF00
		bra	reccad
	nreccad:
		clra
		rts


