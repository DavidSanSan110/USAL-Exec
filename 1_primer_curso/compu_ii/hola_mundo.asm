.module hola_mundo
.globl  main
.globl	imprimir_cadena

fin		    .equ	0xFF01
pantalla	.equ 	0xFF00

saludo:
    .asciz  "\nHola mundo\n"

main:
    ldx     #saludo
    jsr     imprimir_cadena
    lda     #0
    sta     pantalla
    clra
    sta     fin

    .area   FIJA(ABS)
    .org    0xFFFE
    .word   main


