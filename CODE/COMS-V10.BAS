100 'inicia o programa carregando as variaveis
s0 = 0
s1 = 1
s2 = 2
s3 = 4
s4 = 8
s5 = 16
s6 = 32
s7 = 64
s8 = 128
WordOptimize = 0
Cortitle% = 15
Title$ = "CONTROLADOR MULTIFUN€ÇO VIA SOFTWARE"
cback% = 1
marc$ = "Copyhigth (c) 1995-1996  ver.:1.0  Wizards Software "
comsvx$ = "COMS_V1"
Outpoot$ = "nenhum"
lpt1 = &H378
lpt2 = &H278
PushBoton = 0
laco = 1


150 'reseta as saidas a serem usadas pelo controlador
OUT lpt1, s0
OUT lpt2, s0


200 'faz alteracoes no dos
KEY OFF: OUT sai, s0
IF WordOptimize = 0 THEN GOTO 300
IF WordOptimize = 1 THEN
SHELL "CLS"
PRINT "A  Wizards Software  apresenta o freeware "; comsvx$
PRINT Title$
PRINT ""
PRINT "Cria‡ao do programa: M rcio de Sousa Pessoa"
PRINT "Cria‡ao de hardware: Milton de Sousa Pessoa"
SHELL "SET PATH=%PATH% C:\DOS"
SHELL "MODE CON CODEPAGE PREPARE=((850)C:\DOS\EGA.CPI)"
SHELL "MODE CON CODEPAGE SELECT=850"
END IF


300 'altera o modo de tela para EGA/VGA, que suporta o formato de 640 x 350
CLS : SCREEN 9


400 'desenha a tela de titulo do programa com texto
LINE (0, 0)-(640, 350), 8, BF
LINE (5, 10)-(635, 31), cback%, BF
LINE (8, 13)-(632, 28), 9, BF
titleword% = LEN(Title$)
xpos% = (80 / 2) - (titleword% / 2)
LOCATE 2, xpos%: COLOR Cortitle%, 25: PRINT Title$


500 'desenha janelas adicionais do programa
LINE (10, 40)-(630, 340), cback%, BF
LINE (13, 43)-(627, 337), 9, BF
LINE (18, 48)-(69, 79), 15, BF
DRAW "b m20,77 c12 u5 r10 d5 u3 r26 d3 u5 r10 d5 b m38,73 u3 r9 d3 u3 r10 u15 l29 d15 r10 l10 u10 l2 u2 l4 d8 r4 u2 r2 b m57,60 c12 r2 u2 r4 d8 l4 u2 l2 b m33,60 c12 r5 b r8 c12 r5 b l9 c12 d3 b d3 l7 c12 r15"


600 'imprime textos adicionais ao programa
COLOR 11, 25: LOCATE 5, 15: PRINT marc$
COLOR 10, 25: LOCATE 7, 4: PRINT "Selecione uma das op‡äes abaixo pela sua respectiva tecla."
COLOR 15, 25: LOCATE 9, 4: PRINT "Modo Manual        (M)"
              LOCATE 11, 4: PRINT "Modo Autom tico    (A)"
              LOCATE 13, 4: PRINT "Configurar sa¡da   (C)"
              LOCATE 15, 4: PRINT "Suspende execu‡Æo  (S)"
              LOCATE 17, 4: PRINT "Sai do controlador <ESC>"

'habilita teclado para leitura de dados
601 IF INKEY$ <> "" THEN 601
602 opcao$ = INKEY$: IF opcao$ = "" THEN 602
IF opcao$ = "M" OR opcao$ = "m" THEN GOTO 700
IF opcao$ = "A" OR opcao$ = "a" THEN GOTO 800
IF opcao$ = "C" OR opcao$ = "c" THEN GOTO 1100
IF opcao$ = "S" OR opcao$ = "s" THEN GOTO 2500
IF opcao$ = CHR$(27) THEN GOTO 3000
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10: GOTO 602


700 'modo manual
LINE (10, 40)-(630, 340), cback%, BF
LINE (13, 43)-(627, 337), 9, BF
LINE (18, 48)-(69, 79), 15, BF
DRAW "b m25,75 c12 r20 u4 l20 d4 u4 r6 u15 r15 u2 r8 f2 d2 l6 d2 r6 d2 g2 l8 u2 l8 d9"
COLOR 11, 25: LOCATE 5, 30: PRINT comsvx$; " - MODO MANUAL"
COLOR 10, 25: LOCATE 7, 4: PRINT "Cada tecla abaixo corresponde a uma determinada sa¡da, pode se acessa-las"
              LOCATE 8, 4: PRINT "precionando as mesmas."
COLOR 15, 25: LOCATE 10, 4: PRINT "Primeira sa¡da   (1)"
              LOCATE 11, 4: PRINT "Segunda sa¡da    (2)"
              LOCATE 12, 4: PRINT "Terceira sa¡da   (3)"
              LOCATE 13, 4: PRINT "Quarta sa¡da     (4)"
              LOCATE 14, 4: PRINT "Quinta sa¡da     (5)"
              LOCATE 15, 4: PRINT "Sexta sa¡da      (6)"
              LOCATE 16, 4: PRINT "S‚tima sa¡da     (7)"
              LOCATE 17, 4: PRINT "Oitava sa¡da     (8)"
              LOCATE 18, 4: PRINT "Resetar sa¡da    (+) "
              LOCATE 19, 4: PRINT "Push Boton "; PushBoton; "   <Enter> "
              LOCATE 21, 4: PRINT "Tela anterior    <ESC>"
COLOR 11, 25: LOCATE 23, 4: PRINT "MODO MANUAL - "; marc$
              LOCATE 11, 40: PRINT "Sa¡da atualmente ativada"
COLOR 15, 25: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
701 IF INKEY$ <> "" THEN 701
702 opcao$ = INKEY$: IF opcao$ = "" THEN 702

IF opcao$ = "1" THEN
COLOR 15, 25: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
COLOR 12, 25: LOCATE 14, 30: PRINT "(1)"
OUT sai, s1
IF PushBoton = 0 THEN
OUT sai, s0
COLOR 15, 25: LOCATE 14, 30: PRINT "(1)"
END IF
END IF

IF opcao$ = "2" THEN
COLOR 15, 25: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
COLOR 12, 25: LOCATE 14, 36: PRINT "(2)"
OUT sai, s2
IF PushBoton = 0 THEN
OUT sai, s0
COLOR 15, 25: LOCATE 14, 36: PRINT "(2)"
END IF
END IF

IF opcao$ = "3" THEN
COLOR 15, 25: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
COLOR 12, 25: LOCATE 14, 42: PRINT "(3)"
OUT sai, s3
IF PushBoton = 0 THEN
OUT sai, s0
COLOR 15, 25: LOCATE 14, 42: PRINT "(3)"
END IF
END IF

IF opcao$ = "4" THEN
COLOR 15, 25: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
COLOR 12, 25: LOCATE 14, 48: PRINT "(4)"
OUT sai, s4
IF PushBoton = 0 THEN
OUT sai, s0
COLOR 15, 25: LOCATE 14, 48: PRINT "(4)"
END IF
END IF

IF opcao$ = "5" THEN
COLOR 15, 25: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
COLOR 12, 25: LOCATE 14, 54: PRINT "(5)"
OUT sai, s5
IF PushBoton = 0 THEN
OUT sai, s0
COLOR 15, 25: LOCATE 14, 54: PRINT "(5)"
END IF
END IF

IF opcao$ = "6" THEN
COLOR 15, 25: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
COLOR 12, 25: LOCATE 14, 60: PRINT "(6)"
OUT sai, s6
IF PushBoton = 0 THEN
OUT sai, s0
COLOR 15, 25: LOCATE 14, 60: PRINT "(6)"
END IF
END IF

IF opcao$ = "7" THEN
COLOR 15, 25: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
COLOR 12, 25: LOCATE 14, 66: PRINT "(7)"
OUT sai, s7
IF PushBoton = 0 THEN
OUT sai, s0
COLOR 15, 25: LOCATE 14, 66: PRINT "(7)"
END IF
END IF

IF opcao$ = "8" THEN
COLOR 15, 25: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
COLOR 12, 25: LOCATE 14, 72: PRINT "(8)"
OUT sai, s8
IF PushBoton = 0 THEN
OUT sai, s0
COLOR 15, 25: LOCATE 14, 72: PRINT "(8)"
END IF
END IF

IF opcao$ = CHR$(13) THEN
PushBoton = (NOT (PushBoton))
IF PushBoton = -1 THEN PushBoton = 1
IF PushBoton = -2 THEN PushBoton = 0
COLOR 15, 25: LOCATE 19, 4: PRINT "Push Boton "; PushBoton; "   <Enter> "
END IF
IF opcao$ = "+" THEN
OUT sai, s0
COLOR 15, 25: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
END IF
IF opcao$ = CHR$(27) THEN GOTO 400
IF opcao$ <> "" THEN GOTO 702



800 'modo automatico
'janela principal do modo automatico
LINE (10, 40)-(630, 340), cback%, BF
LINE (13, 43)-(627, 337), 9, BF
LINE (18, 48)-(69, 79), 15, BF

'janela do programa do modo automatico
LINE (225, 107)-(621, 300), 1, BF
LINE (228, 110)-(618, 297), 9, BF
DRAW "b m28,75 c12 r30 u8 l30 d8 u8 r8 u2 r15 d2 u2 r4 u12 l24 d12 r4 b u2 c12 r17 u8 l18 d8 b d7 c12 r5 b d2 c12 l5 b u11 b r3 u4 r3 d2 l3 b d2 b r5 u2 r2 d1 b d1 b r2 u2 r2 d2 l2h"

805 'textos da primeira coluna
COLOR 11, 25: LOCATE 5, 28: PRINT comsvx$; " - MODO AUTOMµTICO"
COLOR 15, 25: LOCATE 7, 4: PRINT "Primeira sa¡da    (1)"
              LOCATE 8, 4: PRINT "Segunda sa¡da     (2)"
              LOCATE 9, 4: PRINT "Terceira sa¡da    (3)"
              LOCATE 10, 4: PRINT "Quarta sa¡da      (4)"
              LOCATE 11, 4: PRINT "Quinta sa¡da      (5)"
              LOCATE 12, 4: PRINT "Sexta sa¡da       (6)"
              LOCATE 13, 4: PRINT "S‚tima sa¡da      (7)"
              LOCATE 14, 4: PRINT "Oitava sa¡da      (8)"
              LOCATE 16, 4: PRINT "Executar programa (E)"
COLOR 8, 25:  LOCATE 17, 4: PRINT "Pausar programa   (P)"
              LOCATE 18, 4: PRINT "Cancelar programa (C)"
COLOR 15, 25: LOCATE 19, 4: PRINT "Novo programa     (N)"
              LOCATE 20, 4: PRINT "Definir La‡o      (L)"
              LOCATE 21, 4: PRINT "Tela anterior     <ESC>"

8100
'imprime setas da tela do programa
COLOR 10, 25: LOCATE 7, 32: PRINT "Dispositivos       Dura‡Æo          Espera"
COLOR 11, 25: LOCATE 9, 30: PRINT CHR$(16): LOCATE 9, 46: PRINT CHR$(16): LOCATE 9, 63: PRINT CHR$(16)
              LOCATE 10, 30: PRINT CHR$(16): LOCATE 10, 46: PRINT CHR$(16): LOCATE 10, 63: PRINT CHR$(16)
              LOCATE 11, 30: PRINT CHR$(16): LOCATE 11, 46: PRINT CHR$(16): LOCATE 11, 63: PRINT CHR$(16)
              LOCATE 12, 30: PRINT CHR$(16): LOCATE 12, 46: PRINT CHR$(16): LOCATE 12, 63: PRINT CHR$(16)
              LOCATE 13, 30: PRINT CHR$(16): LOCATE 13, 46: PRINT CHR$(16): LOCATE 13, 63: PRINT CHR$(16)
              LOCATE 14, 30: PRINT CHR$(16): LOCATE 14, 46: PRINT CHR$(16): LOCATE 14, 63: PRINT CHR$(16)
              LOCATE 15, 30: PRINT CHR$(16): LOCATE 15, 46: PRINT CHR$(16): LOCATE 15, 63: PRINT CHR$(16)
              LOCATE 16, 30: PRINT CHR$(16): LOCATE 16, 46: PRINT CHR$(16): LOCATE 16, 63: PRINT CHR$(16)
              LOCATE 17, 30: PRINT CHR$(16): LOCATE 17, 46: PRINT CHR$(16): LOCATE 17, 63: PRINT CHR$(16)
              LOCATE 18, 30: PRINT CHR$(16): LOCATE 18, 46: PRINT CHR$(16): LOCATE 18, 63: PRINT CHR$(16)
              LOCATE 19, 30: PRINT CHR$(16): LOCATE 19, 46: PRINT CHR$(16): LOCATE 19, 63: PRINT CHR$(16)
              LOCATE 20, 30: PRINT CHR$(16): LOCATE 20, 46: PRINT CHR$(16): LOCATE 20, 63: PRINT CHR$(16)
              LOCATE 21, 30: PRINT CHR$(16): LOCATE 21, 46: PRINT CHR$(16): LOCATE 21, 63: PRINT CHR$(16)
COLOR 11, 25: LOCATE 23, 4: PRINT "MODO AUTOMµTICO - "; marc$

'imprime as variaveis ativas do modo automatico
LOCATE 9, 32: PRINT sa1
LOCATE 9, 48: PRINT dura1
LOCATE 9, 65: PRINT espe1
LOCATE 10, 32: PRINT sa2
LOCATE 10, 48: PRINT dura2
LOCATE 10, 65: PRINT espe2
LOCATE 11, 32: PRINT sa3
LOCATE 11, 48: PRINT dura3
LOCATE 11, 65: PRINT espe3
LOCATE 12, 32: PRINT sa4
LOCATE 12, 48: PRINT dura4
LOCATE 12, 65: PRINT espe4
LOCATE 13, 32: PRINT sa5
LOCATE 13, 48: PRINT dura5
LOCATE 13, 65: PRINT espe5
LOCATE 14, 32: PRINT sa6
LOCATE 14, 48: PRINT dura6
LOCATE 14, 65: PRINT espe6
LOCATE 15, 32: PRINT sa7
LOCATE 15, 48: PRINT dura7
LOCATE 15, 65: PRINT espe7
LOCATE 16, 32: PRINT sa8
LOCATE 16, 48: PRINT dura8
LOCATE 16, 65: PRINT espe8
LOCATE 17, 32: PRINT sa9
LOCATE 17, 48: PRINT dura9
LOCATE 17, 65: PRINT espe9
LOCATE 18, 32: PRINT sa10
LOCATE 18, 48: PRINT dura10
LOCATE 18, 65: PRINT espe10
LOCATE 19, 32: PRINT sa11
LOCATE 19, 48: PRINT dura11
LOCATE 19, 65: PRINT espe11
LOCATE 20, 32: PRINT sa12
LOCATE 20, 48: PRINT dura12
LOCATE 20, 65: PRINT espe12
LOCATE 21, 32: PRINT sa13
LOCATE 21, 48: PRINT dura13
LOCATE 21, 65: PRINT espe13


'habilita teclado para leitura de dados
801 IF INKEY$ <> "" THEN 801
802 opcao$ = INKEY$: IF opcao$ = "" THEN 802
IF opcao$ = "E" OR opcao$ = "e" THEN GOTO 830
IF opcao$ = "L" OR opcao$ = "l" THEN GOTO 810
IF opcao$ = "N" OR opcao$ = "n" THEN GOTO 820
IF opcao$ = CHR$(27) THEN GOTO 400
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10: GOTO 802

810 'definir laco do programa
COLOR 14, 25: LOCATE 20, 4: PRINT "La‡o="; laco; ",alterar? (S/N)"
811 IF INKEY$ <> "" THEN 811
812 opcao$ = INKEY$: IF opcao$ = "" THEN 812
IF opcao$ = "S" OR opcao$ = "s" THEN GOTO 813
IF opcao$ = "N" OR opcao$ = "n" THEN GOTO 814
IF opcao$ = CHR$(27) THEN GOTO 400
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10: GOTO 812
813
LOCATE 20, 4: PRINT "                         "
LOCATE 20, 4: INPUT "La‡o do programa= ", laco
COLOR 15, 25: LOCATE 20, 4: PRINT "Definir La‡o      (L)"
GOTO 801
814
LOCATE 20, 4: PRINT "                         "
COLOR 15, 25: LOCATE 20, 4: PRINT "Definir La‡o      (L)"
GOTO 801


820 'novo programa, le as veriaveis apartir do teclado
'janela do programa do modo automatico
LINE (225, 107)-(621, 300), 1, BF
LINE (228, 110)-(618, 297), 9, BF
'imprime setas da tela do programa
COLOR 10, 25: LOCATE 7, 32: PRINT "Dispositivos       Dura‡Æo          Espera"
COLOR 11, 25: LOCATE 9, 30: PRINT CHR$(16): LOCATE 9, 46: PRINT CHR$(16): LOCATE 9, 63: PRINT CHR$(16)
              LOCATE 10, 30: PRINT CHR$(16): LOCATE 10, 46: PRINT CHR$(16): LOCATE 10, 63: PRINT CHR$(16)
              LOCATE 11, 30: PRINT CHR$(16): LOCATE 11, 46: PRINT CHR$(16): LOCATE 11, 63: PRINT CHR$(16)
              LOCATE 12, 30: PRINT CHR$(16): LOCATE 12, 46: PRINT CHR$(16): LOCATE 12, 63: PRINT CHR$(16)
              LOCATE 13, 30: PRINT CHR$(16): LOCATE 13, 46: PRINT CHR$(16): LOCATE 13, 63: PRINT CHR$(16)
              LOCATE 14, 30: PRINT CHR$(16): LOCATE 14, 46: PRINT CHR$(16): LOCATE 14, 63: PRINT CHR$(16)
              LOCATE 15, 30: PRINT CHR$(16): LOCATE 15, 46: PRINT CHR$(16): LOCATE 15, 63: PRINT CHR$(16)
              LOCATE 16, 30: PRINT CHR$(16): LOCATE 16, 46: PRINT CHR$(16): LOCATE 16, 63: PRINT CHR$(16)
              LOCATE 17, 30: PRINT CHR$(16): LOCATE 17, 46: PRINT CHR$(16): LOCATE 17, 63: PRINT CHR$(16)
              LOCATE 18, 30: PRINT CHR$(16): LOCATE 18, 46: PRINT CHR$(16): LOCATE 18, 63: PRINT CHR$(16)
              LOCATE 19, 30: PRINT CHR$(16): LOCATE 19, 46: PRINT CHR$(16): LOCATE 19, 63: PRINT CHR$(16)
              LOCATE 20, 30: PRINT CHR$(16): LOCATE 20, 46: PRINT CHR$(16): LOCATE 20, 63: PRINT CHR$(16)
              LOCATE 21, 30: PRINT CHR$(16): LOCATE 21, 46: PRINT CHR$(16): LOCATE 21, 63: PRINT CHR$(16)
COLOR 11, 25: LOCATE 23, 4: PRINT "MODO AUTOMµTICO - "; marc$

COLOR 11, 25


LOCATE 9, 32: INPUT "", sa1
SELECT CASE sa1
CASE IS = 1
disp1 = s1
CASE IS = 2
disp1 = s2
CASE IS = 3
disp1 = s3
CASE IS = 4
disp1 = s4
CASE IS = 5
disp1 = s5
CASE IS = 6
disp1 = s6
CASE IS = 7
disp1 = s7
CASE IS = 8
disp1 = s8
END SELECT
LOCATE 9, 48: INPUT "", dura1
LOCATE 9, 65: INPUT "", espe1

LOCATE 10, 32: INPUT "", sa2
SELECT CASE sa2
CASE IS = 1
disp2 = s1
CASE IS = 2
disp2 = s2
CASE IS = 3
disp2 = s3
CASE IS = 4
disp2 = s4
CASE IS = 5
disp2 = s5
CASE IS = 6
disp2 = s6
CASE IS = 7
disp2 = s7
CASE IS = 8
disp2 = s8
END SELECT
LOCATE 10, 48: INPUT "", dura2
LOCATE 10, 65: INPUT "", espe2

LOCATE 11, 32: INPUT "", sa3
SELECT CASE sa3
CASE IS = 1
disp3 = s1
CASE IS = 2
disp3 = s2
CASE IS = 3
disp3 = s3
CASE IS = 4
disp3 = s4
CASE IS = 5
disp3 = s5
CASE IS = 6
disp3 = s6
CASE IS = 7
disp3 = s7
CASE IS = 8
disp3 = s8
END SELECT
LOCATE 11, 48: INPUT "", dura3
LOCATE 11, 65: INPUT "", espe3

LOCATE 12, 32: INPUT "", sa4
SELECT CASE sa4
CASE IS = 1
disp4 = s1
CASE IS = 2
disp4 = s2
CASE IS = 3
disp4 = s3
CASE IS = 4
disp4 = s4
CASE IS = 5
disp4 = s5
CASE IS = 6
disp4 = s6
CASE IS = 7
disp4 = s7
CASE IS = 8
disp4 = s8
END SELECT
LOCATE 12, 48: INPUT "", dura4
LOCATE 12, 65: INPUT "", espe4

LOCATE 13, 32: INPUT "", sa5
SELECT CASE sa5
CASE IS = 1
disp5 = s1
CASE IS = 2
disp5 = s2
CASE IS = 3
disp5 = s3
CASE IS = 4
disp5 = s4
CASE IS = 5
disp5 = s5
CASE IS = 6
disp5 = s6
CASE IS = 7
disp5 = s7
CASE IS = 8
disp5 = s8
END SELECT
LOCATE 13, 48: INPUT "", dura5
LOCATE 13, 65: INPUT "", espe5

LOCATE 14, 32: INPUT "", sa6
SELECT CASE sa6
CASE IS = 1
disp6 = s1
CASE IS = 2
disp6 = s2
CASE IS = 3
disp6 = s3
CASE IS = 4
disp6 = s4
CASE IS = 5
disp6 = s5
CASE IS = 6
disp6 = s6
CASE IS = 7
disp6 = s7
CASE IS = 8
disp6 = s8
END SELECT
LOCATE 14, 48: INPUT "", dura6
LOCATE 14, 65: INPUT "", espe6

LOCATE 15, 32: INPUT "", sa7
SELECT CASE sa7
CASE IS = 1
disp7 = s1
CASE IS = 2
disp7 = s2
CASE IS = 3
disp7 = s3
CASE IS = 4
disp7 = s4
CASE IS = 5
disp7 = s5
CASE IS = 6
disp7 = s6
CASE IS = 7
disp7 = s7
CASE IS = 8
disp7 = s8
END SELECT
LOCATE 15, 48: INPUT "", dura7
LOCATE 15, 65: INPUT "", espe7

LOCATE 16, 32: INPUT "", sa8
SELECT CASE sa8
CASE IS = 1
disp8 = s1
CASE IS = 2
disp8 = s2
CASE IS = 3
disp8 = s3
CASE IS = 4
disp8 = s4
CASE IS = 5
disp8 = s5
CASE IS = 6
disp8 = s6
CASE IS = 7
disp8 = s7
CASE IS = 8
disp8 = s8
END SELECT
LOCATE 16, 48: INPUT "", dura8
LOCATE 16, 65: INPUT "", espe8

LOCATE 17, 32: INPUT "", sa9
SELECT CASE sa9
CASE IS = 1
disp9 = s1
CASE IS = 2
disp9 = s2
CASE IS = 3
disp9 = s3
CASE IS = 4
disp9 = s4
CASE IS = 5
disp9 = s5
CASE IS = 6
disp9 = s6
CASE IS = 7
disp9 = s7
CASE IS = 8
disp9 = s8
END SELECT
LOCATE 17, 48: INPUT "", dura9
LOCATE 17, 65: INPUT "", espe9

LOCATE 18, 32: INPUT "", sa10
SELECT CASE sa10
CASE IS = 1
disp10 = s1
CASE IS = 2
disp10 = s2
CASE IS = 3
disp10 = s3
CASE IS = 4
disp10 = s4
CASE IS = 5
disp10 = s5
CASE IS = 6
disp10 = s6
CASE IS = 7
disp10 = s7
CASE IS = 8
disp10 = s8
END SELECT
LOCATE 18, 48: INPUT "", dura10
LOCATE 18, 65: INPUT "", espe10

LOCATE 19, 32: INPUT "", sa11
SELECT CASE sa11
CASE IS = 1
disp11 = s1
CASE IS = 2
disp11 = s2
CASE IS = 3
disp11 = s3
CASE IS = 4
disp11 = s4
CASE IS = 5
disp11 = s5
CASE IS = 6
disp11 = s6
CASE IS = 7
disp11 = s7
CASE IS = 8
disp11 = s8
END SELECT
LOCATE 19, 48: INPUT "", dura11
LOCATE 19, 65: INPUT "", espe11

LOCATE 20, 32: INPUT "", sa12
SELECT CASE sa12
CASE IS = 1
disp12 = s1
CASE IS = 2
disp12 = s2
CASE IS = 3
disp12 = s3
CASE IS = 4
disp12 = s4
CASE IS = 5
disp12 = s5
CASE IS = 6
disp12 = s6
CASE IS = 7
disp12 = s7
CASE IS = 8
disp12 = s8
END SELECT
LOCATE 20, 48: INPUT "", dura12
LOCATE 20, 65: INPUT "", espe12

LOCATE 21, 32: INPUT "", sa13
SELECT CASE sa13
CASE IS = 1
disp13 = s1
CASE IS = 2
disp13 = s2
CASE IS = 3
disp13 = s3
CASE IS = 4
disp13 = s4
CASE IS = 5
disp13 = s5
CASE IS = 6
disp13 = s6
CASE IS = 7
disp13 = s7
CASE IS = 8
disp13 = s8
END SELECT
LOCATE 21, 48: INPUT "", dura13
LOCATE 21, 65: INPUT "", espe13
GOTO 8100



830 'executa programa que foi escrito
COLOR 15, 25:  LOCATE 17, 4: PRINT "Pausar programa   (P)"
               LOCATE 18, 4: PRINT "Cancelar programa (C)"
FOR l% = 1 TO laco STEP 1

              LOCATE 10, 30: PRINT CHR$(16): LOCATE 10, 46: PRINT CHR$(16): LOCATE 10, 63: PRINT CHR$(16)
              LOCATE 11, 30: PRINT CHR$(16): LOCATE 11, 46: PRINT CHR$(16): LOCATE 11, 63: PRINT CHR$(16)
              LOCATE 12, 30: PRINT CHR$(16): LOCATE 12, 46: PRINT CHR$(16): LOCATE 12, 63: PRINT CHR$(16)
              LOCATE 13, 30: PRINT CHR$(16): LOCATE 13, 46: PRINT CHR$(16): LOCATE 13, 63: PRINT CHR$(16)
              LOCATE 14, 30: PRINT CHR$(16): LOCATE 14, 46: PRINT CHR$(16): LOCATE 14, 63: PRINT CHR$(16)
              LOCATE 15, 30: PRINT CHR$(16): LOCATE 15, 46: PRINT CHR$(16): LOCATE 15, 63: PRINT CHR$(16)
              LOCATE 16, 30: PRINT CHR$(16): LOCATE 16, 46: PRINT CHR$(16): LOCATE 16, 63: PRINT CHR$(16)
              LOCATE 17, 30: PRINT CHR$(16): LOCATE 17, 46: PRINT CHR$(16): LOCATE 17, 63: PRINT CHR$(16)
              LOCATE 18, 30: PRINT CHR$(16): LOCATE 18, 46: PRINT CHR$(16): LOCATE 18, 63: PRINT CHR$(16)
              LOCATE 19, 30: PRINT CHR$(16): LOCATE 19, 46: PRINT CHR$(16): LOCATE 19, 63: PRINT CHR$(16)
              LOCATE 20, 30: PRINT CHR$(16): LOCATE 20, 46: PRINT CHR$(16): LOCATE 20, 63: PRINT CHR$(16)
              LOCATE 21, 30: PRINT CHR$(16): LOCATE 21, 46: PRINT CHR$(16): LOCATE 21, 63: PRINT CHR$(16)

FOR d% = 1 TO dura1 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
OUT sai, disp1
    COLOR 12, 25: LOCATE 9, 30: PRINT CHR$(16): LOCATE 9, 46: PRINT CHR$(16)
NEXT d%
    COLOR 11, 25: LOCATE 9, 30: PRINT CHR$(16): LOCATE 9, 46: PRINT CHR$(16)
OUT sai, s0
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
FOR e% = 1 TO espe1 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
COLOR 12, 25: LOCATE 9, 63: PRINT CHR$(16)
NEXT e%
COLOR 11, 25: LOCATE 9, 63: PRINT CHR$(16)
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:


'############################################################################

FOR d% = 1 TO dura2 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
    OUT sai, disp2
    COLOR 12, 25: LOCATE 10, 30: PRINT CHR$(16): LOCATE 10, 46: PRINT CHR$(16)
NEXT d%
    COLOR 11, 25: LOCATE 10, 30: PRINT CHR$(16): LOCATE 10, 46: PRINT CHR$(16)
OUT sai, s0
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
FOR e% = 1 TO espe2 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
COLOR 12, 25: LOCATE 10, 63: PRINT CHR$(16)
NEXT e%
COLOR 11, 25: LOCATE 10, 63: PRINT CHR$(16)
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'############################################################################

FOR d% = 1 TO dura3 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
    OUT sai, disp3
    COLOR 12, 25: LOCATE 11, 30: PRINT CHR$(16): LOCATE 11, 46: PRINT CHR$(16)
NEXT d%
    COLOR 11, 25: LOCATE 11, 30: PRINT CHR$(16): LOCATE 11, 46: PRINT CHR$(16)
OUT sai, s0
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
FOR e% = 1 TO espe3 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
COLOR 12, 25: LOCATE 11, 63: PRINT CHR$(16)
NEXT e%
COLOR 11, 25: LOCATE 11, 63: PRINT CHR$(16)
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'############################################################################

FOR d% = 1 TO dura4 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
    OUT sai, disp4
    COLOR 12, 25: LOCATE 12, 30: PRINT CHR$(16): LOCATE 12, 46: PRINT CHR$(16)
NEXT d%
    COLOR 11, 25: LOCATE 12, 30: PRINT CHR$(16): LOCATE 12, 46: PRINT CHR$(16)
OUT sai, s0
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
FOR e% = 1 TO espe4 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
COLOR 12, 25: LOCATE 12, 63: PRINT CHR$(16)
NEXT e%
COLOR 11, 25: LOCATE 12, 63: PRINT CHR$(16)
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'############################################################################

FOR d% = 1 TO dura5 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
    OUT sai, disp5
    COLOR 12, 25: LOCATE 13, 30: PRINT CHR$(16): LOCATE 13, 46: PRINT CHR$(16)
NEXT d%
    COLOR 11, 25: LOCATE 13, 30: PRINT CHR$(16): LOCATE 13, 46: PRINT CHR$(16)
OUT sai, s0
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
FOR e% = 1 TO espe5 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
COLOR 12, 25: LOCATE 13, 63: PRINT CHR$(16)
NEXT e%
COLOR 11, 25: LOCATE 13, 63: PRINT CHR$(16)
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'############################################################################

FOR d% = 1 TO dura6 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
    OUT sai, disp6
    COLOR 12, 25: LOCATE 14, 30: PRINT CHR$(16): LOCATE 14, 46: PRINT CHR$(16)
NEXT d%
    COLOR 11, 25: LOCATE 14, 30: PRINT CHR$(16): LOCATE 14, 46: PRINT CHR$(16)
OUT sai, s0
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
FOR e% = 1 TO espe6 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
COLOR 12, 25: LOCATE 14, 63: PRINT CHR$(16)
NEXT e%
COLOR 11, 25: LOCATE 14, 63: PRINT CHR$(16)
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'############################################################################

FOR d% = 1 TO dura7 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
    OUT sai, disp7
    COLOR 12, 25: LOCATE 15, 30: PRINT CHR$(16): LOCATE 15, 46: PRINT CHR$(16)
NEXT d%
    COLOR 11, 25: LOCATE 15, 30: PRINT CHR$(16): LOCATE 15, 46: PRINT CHR$(16)
OUT sai, s0
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
FOR e% = 1 TO espe7 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
COLOR 12, 25: LOCATE 15, 63: PRINT CHR$(16)
NEXT e%
COLOR 11, 25: LOCATE 15, 63: PRINT CHR$(16)
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'############################################################################

FOR d% = 1 TO dura8 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
    OUT sai, disp8
    COLOR 12, 25: LOCATE 16, 30: PRINT CHR$(16): LOCATE 16, 46: PRINT CHR$(16)
NEXT d%
    COLOR 11, 25: LOCATE 16, 30: PRINT CHR$(16): LOCATE 16, 46: PRINT CHR$(16)
OUT sai, s0
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
FOR e% = 1 TO espe8 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
COLOR 12, 25: LOCATE 16, 63: PRINT CHR$(16)
NEXT e%
COLOR 11, 25: LOCATE 16, 63: PRINT CHR$(16)
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'############################################################################

FOR d% = 1 TO dura9 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
    OUT sai, disp9
    COLOR 12, 25: LOCATE 17, 30: PRINT CHR$(16): LOCATE 17, 46: PRINT CHR$(16)
NEXT d%
    COLOR 11, 25: LOCATE 17, 30: PRINT CHR$(16): LOCATE 17, 46: PRINT CHR$(16)
OUT sai, s0
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
FOR e% = 1 TO espe9 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
COLOR 12, 25: LOCATE 17, 63: PRINT CHR$(16)
NEXT e%
COLOR 11, 25: LOCATE 17, 63: PRINT CHR$(16)
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'############################################################################

FOR d% = 1 TO dura10 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
    OUT sai, disp10
    COLOR 12, 25: LOCATE 18, 30: PRINT CHR$(16): LOCATE 18, 46: PRINT CHR$(16)
NEXT d%
    COLOR 11, 25: LOCATE 18, 30: PRINT CHR$(16): LOCATE 18, 46: PRINT CHR$(16)
OUT sai, s0
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
FOR e% = 1 TO espe10 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
COLOR 12, 25: LOCATE 18, 63: PRINT CHR$(16)
NEXT e%
COLOR 11, 25: LOCATE 18, 63: PRINT CHR$(16)
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'############################################################################

FOR d% = 1 TO dura11 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
    OUT sai, disp11
    COLOR 12, 25: LOCATE 19, 30: PRINT CHR$(16): LOCATE 19, 46: PRINT CHR$(16)
NEXT d%
    COLOR 11, 25: LOCATE 19, 30: PRINT CHR$(16): LOCATE 19, 46: PRINT CHR$(16)
OUT sai, s0
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
FOR e% = 1 TO espe11 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
COLOR 12, 25: LOCATE 19, 63: PRINT CHR$(16)
NEXT e%
COLOR 11, 25: LOCATE 19, 63: PRINT CHR$(16)
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'############################################################################

FOR d% = 1 TO dura12 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
    OUT sai, disp12
    COLOR 12, 25: LOCATE 20, 30: PRINT CHR$(16): LOCATE 20, 46: PRINT CHR$(16)
NEXT d%
    COLOR 11, 25: LOCATE 20, 30: PRINT CHR$(16): LOCATE 20, 46: PRINT CHR$(16)
OUT sai, s0
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
FOR e% = 1 TO espe12 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
COLOR 12, 25: LOCATE 20, 63: PRINT CHR$(16)
NEXT e%
COLOR 11, 25: LOCATE 20, 63: PRINT CHR$(16)
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'############################################################################

FOR d% = 1 TO dura13 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
    OUT sai, disp13
    COLOR 12, 25: LOCATE 21, 30: PRINT CHR$(16): LOCATE 21, 46: PRINT CHR$(16)
NEXT d%
    COLOR 11, 25: LOCATE 21, 30: PRINT CHR$(16): LOCATE 21, 46: PRINT CHR$(16)
OUT sai, s0
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
FOR e% = 1 TO espe13 STEP 1
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
COLOR 12, 25: LOCATE 21, 63: PRINT CHR$(16)
NEXT e%
COLOR 11, 25: LOCATE 21, 63: PRINT CHR$(16)
opcao$ = INKEY$
IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), s0: GOTO 805
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'############################################################################

NEXT l% 'repeticao do laco
GOTO 805


1100 'configurar saida
LINE (10, 40)-(630, 340), 8, BF
LINE (180, 160)-(460, 235), cback%, BF
1101
IF sai = lpt1 THEN Outpoot$ = "LPT1"
IF sai = lpt2 THEN Outpoot$ = "LPT2"
LINE (183, 163)-(457, 232), 9, BF
LINE (190, 180)-(241, 211), 15, BF
DRAW "b l46 b u7 c12 u16 e4 r10 d5 l8 d14 r8 d5 l10 h4 b r20 b u5 c12 r8 d2 l8 u2 b u6 c12 u2 r8 d2 l8 u2 b r22 b d3 c12 l4 d5 r4"
COLOR 10, 25: LOCATE 13, 33: PRINT "Escolha a porta de sa¡da"
COLOR 15, 25: LOCATE 14, 35: PRINT "LPT1 (1)    LPT2 (2)"
COLOR 10, 25: LOCATE 16, 37: PRINT "Atual em "; Outpoot$
1102 IF INKEY$ <> "" THEN 1102
1103 opcao$ = INKEY$: IF opcao$ = "" THEN 1103
IF opcao$ = "1" THEN sai = lpt1: GOTO 1101
IF opcao$ = "2" THEN sai = lpt2: GOTO 1101
IF opcao$ = CHR$(27) OR opcao$ = CHR$(13) THEN GOTO 400
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10: GOTO 1103


2500 'suspende execucao
SCREEN 0
COLOR 15
LOCATE 1, 1: PRINT "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
LOCATE 2, 1: PRINT "³                                   "; comsvx$; "                                    ³"
LOCATE 3, 1: PRINT "³ Controlador Multifun‡Æo via Software                                         ³"
LOCATE 4, 1: PRINT "³ "; marc$; "                         ³"
LOCATE 5, 1: PRINT "³                                                                              ³"
LOCATE 6, 1: PRINT "³ Digite EXIT para retornar ao "; comsvx$; "                                         ³"
LOCATE 7, 1: PRINT "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
PRINT ;
PRINT ;
PRINT ;
SHELL
GOTO 300


3000 'sai do programa
LINE (10, 40)-(630, 340), 8, BF
LINE (180, 160)-(460, 235), cback%, BF
LINE (183, 163)-(457, 232), 9, BF
LINE (190, 180)-(241, 211), 15, BF
COLOR 10, 25: LOCATE 13, 33: PRINT "Deseja realmente sair ?"
COLOR 15, 25: LOCATE 15, 36: PRINT "Sim (S)   NÆo (N)"
DRAW "b m200,195 c12 e8 d5 r22 d7 l22 d5 h8"
3001 IF INKEY$ <> "" THEN 3001
3002 opcao$ = INKEY$: IF opcao$ = "" THEN 3002
IF opcao$ = "N" OR opcao$ = "n" THEN GOTO 400
IF opcao$ = "S" OR opcao$ = "s" THEN SYSTEM
IF opcao$ = CHR$(27) THEN GOTO 400
IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10: GOTO 3002


'Inicio da producao do programa
'Sao Paulo, 24 de junho de 1995 - sabado
'Marcio de Sousa Pessoa
'Praca Tito Pacheco 24-A Jardim Miriam
'Sao Paulo -SP- ,  Brasil,  Planeta Terra,  Via Lactea (Sistema Solar)

'Finalizacao da producao do programa
'SÆo Paulo, 3 de julho de 1997 - quarta feira
'Marcio de Sousa Pessoa
'e-mail: marciomexicano@zipmail.com.br
'Praca Tito Pacheco 24-A Jardim Miriam
'Sao Paulo -SP- ,  Brasil,  Planeta Terra,  Via Lactea (Sistema Solar)

