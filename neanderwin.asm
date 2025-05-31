;---------------------------------------------------
; Programa:Soma dois n?meros
; Autor:Alexsandro Henrique
; Data:06-02-2017
;---------------------------------------------------
; Programa para somar dois n?meros
INICIO:  LDA NUM1      ; Carrega o valor de NUM1 no acumulador
         ADD NUM2      ; Soma o valor de NUM2 ao acumulador
         STA RESULTADO ; Armazena o resultado em RESULTADO
         HLT           ; Termina a execu??o

NUM1:    DB 5          ; Primeiro n?mero (5)
NUM2:    DB 3          ; Segundo n?mero (3)
RESULTADO: DB 0        ; Local para armazenar o resultado

ORG 0

        IN 0
        STA CONTADOR

LOOP:   LDA CONTADOR
        ADD ASCII_ZERO
        OUT 0

        LDA CONTADOR
        SUB PASSO
        JN FIM
        STA CONTADOR
        JMP LOOP

FIM:    LDA LETRA_F
        OUT 0
        LDA LETRA_I
        OUT 0
        LDA LETRA_M
        OUT 0
        LDA LETRA_EXCL
        OUT 0
        LDA BEEP
        OUT 1
        JMP FIM

; ======= DADOS =======
CONTADOR:      DB 0
PASSO:         DB 1
ASCII_ZERO:    DB 48
LETRA_F:       DB 70
LETRA_I:       DB 73
LETRA_M:       DB 77
LETRA_EXCL:    DB 33
BEEP:          DB 7

