100 'inicia o programa atribuindo valores as variaveis
   S0 = 0
   S1 = 1
   S2 = 2
   S3 = 4
   S4 = 8
   S5 = 16
   S6 = 32
   S7 = 64
   S8 = 128
   WordOptimize = 0
   Cortitle% = 15
   Title$ = " CONTROLADOR MULTIFUN€ÇO VIA SOFTWARE "
   Cback% = 1
   Cwin% = 5
   Cline = 11
   Cprog% = 6
   marc$ = "Copyhigth (c) 1995-1996  ver.:1.1f Wizards Software"
   comsvx$ = "COMS-V1"
   Outpoot$ = "nenhum"
   Lpt1 = &H378
   Lpt2 = &H278
   PushBoton = 0
   Laco = 1


150 'reseta as saidas a serem usadas pelo controlador
   OUT Lpt1, S0
   OUT Lpt2, S0


200 'faz alteracoes no DOS
   KEY OFF: OUT sai, S0
   IF WordOptimize = 0 THEN GOTO 300
   IF WordOptimize = 1 THEN
      CLS
      PRINT "A  Wizards Software  apresenta o freeware "; comsvx$
      PRINT Title$
      PRINT ;
      PRINT "Cria‡ao do programa: M rcio de Sousa Pessoa"
      PRINT "Cria‡ao de hardware: M¡lton de Sousa Pessoa"
   END IF


300 'fixa o modo de tela para texto, que suporta o formato de 80 x 25
   CLS : SCREEN 0


400 'desenha a tela de titulo do programa com texto

   titleword% = LEN(Title$)
   xpos% = 40 - titleword% / 2
   LOCATE 2, xpos%: COLOR 0, 15: PRINT Title$


500 'desenha janelas adicionais do programa
   COLOR Cline, Cback%
   LOCATE 4, 2: PRINT "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
   LOCATE 5, 2: PRINT "³                                                                            ³"
   LOCATE 6, 2: PRINT "³                                                                            ³"
   LOCATE 7, 2: PRINT "³                                                                            ³"
   LOCATE 8, 2: PRINT "³                                                                            ³"
   LOCATE 9, 2: PRINT "³                                                                            ³"
   LOCATE 10, 2: PRINT "³                                                                            ³"
   LOCATE 11, 2: PRINT "³                                                                            ³"
   LOCATE 12, 2: PRINT "³                                                                            ³"
   LOCATE 13, 2: PRINT "³                                                                            ³"
   LOCATE 14, 2: PRINT "³                                                                            ³"
   LOCATE 15, 2: PRINT "³                                                                            ³"
   LOCATE 16, 2: PRINT "³                                                                            ³"
   LOCATE 17, 2: PRINT "³                                                                            ³"
   LOCATE 18, 2: PRINT "³                                                                            ³"
   LOCATE 19, 2: PRINT "³                                                                            ³"
   LOCATE 20, 2: PRINT "³                                                                            ³"
   LOCATE 21, 2: PRINT "³                                                                            ³"
   LOCATE 22, 2: PRINT "³                                                                            ³"
   LOCATE 23, 2: PRINT "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"


600 'imprime textos adicionais ao programa
   COLOR 15, Cback%: LOCATE 5, 15: PRINT marc$
   COLOR 7, Cback%: LOCATE 7, 4: PRINT "Selecione uma das op‡äes abaixo pressionando sua respectiva tecla."
   COLOR 15, Cback%: LOCATE 9, 4: PRINT "Modo Manual        (M)"
   LOCATE 11, 4: PRINT "Modo Autom tico    (A)"
   LOCATE 13, 4: PRINT "Configurar sa¡da   (C)"
   LOCATE 15, 4: PRINT "Suspende execu‡Æo  (S)"
   LOCATE 18, 4: PRINT "Sai do controlador <ESC>"

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
'desenha a janela do modo manual
   COLOR Cline, Cback%
   LOCATE 4, 2: PRINT "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
   LOCATE 5, 2: PRINT "³                                                                            ³"
   LOCATE 6, 2: PRINT "³                                                                            ³"
   LOCATE 7, 2: PRINT "³                                                                            ³"
   LOCATE 8, 2: PRINT "³                                                                            ³"
   LOCATE 9, 2: PRINT "³                                                                            ³"
   LOCATE 10, 2: PRINT "³                                                                            ³"
   LOCATE 11, 2: PRINT "³                                                                            ³"
   LOCATE 12, 2: PRINT "³                                                                            ³"
   LOCATE 13, 2: PRINT "³                                                                            ³"
   LOCATE 14, 2: PRINT "³                                                                            ³"
   LOCATE 15, 2: PRINT "³                                                                            ³"
   LOCATE 16, 2: PRINT "³                                                                            ³"
   LOCATE 17, 2: PRINT "³                                                                            ³"
   LOCATE 18, 2: PRINT "³                                                                            ³"
   LOCATE 19, 2: PRINT "³                                                                            ³"
   LOCATE 20, 2: PRINT "³                                                                            ³"
   LOCATE 21, 2: PRINT "³                                                                            ³"
   LOCATE 22, 2: PRINT "³                                                                            ³"
   LOCATE 23, 2: PRINT "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"


   COLOR 15, Cback%: LOCATE 5, 30: PRINT comsvx$; " - MODO MANUAL"
   COLOR 7, Cback%: LOCATE 7, 4: PRINT "Cada tecla abaixo corresponde a uma determinada sa¡da, pode-se aciona-las"
   LOCATE 8, 4: PRINT "precionando-as."
   COLOR 15, Cback%: LOCATE 10, 4: PRINT "Primeira sa¡da   (1)"
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
   COLOR 7, Cback%: LOCATE 23, 4: PRINT "MODO MANUAL - "; marc$
   COLOR 12, Cback%: LOCATE 11, 40: PRINT "Sa¡da atualmente ativada"
   COLOR 15, Cback%: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
701 IF INKEY$ <> "" THEN 701
702 opcao$ = INKEY$: IF opcao$ = "" THEN 702

   IF opcao$ = "1" THEN
      COLOR 15, Cback%: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
      COLOR 12, Cback%: LOCATE 14, 30: PRINT "(1)"
      OUT sai, S1
      IF PushBoton = 0 THEN
         OUT sai, S0
         COLOR 15, Cback%: LOCATE 14, 30: PRINT "(1)"
   END IF
   END IF

   IF opcao$ = "2" THEN
      COLOR 15, Cback%: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
      COLOR 12, Cback%: LOCATE 14, 36: PRINT "(2)"
      OUT sai, S2
      IF PushBoton = 0 THEN
         OUT sai, S0
         COLOR 15, Cback%: LOCATE 14, 36: PRINT "(2)"
      END IF
   END IF

   IF opcao$ = "3" THEN
      COLOR 15, Cback%: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
      COLOR 12, Cback%: LOCATE 14, 42: PRINT "(3)"
      OUT sai, S3
   IF PushBoton = 0 THEN
         OUT sai, S0
         COLOR 15, Cback%: LOCATE 14, 42: PRINT "(3)"
   END IF
   END IF

   IF opcao$ = "4" THEN
      COLOR 15, Cback%: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
      COLOR 12, Cback%: LOCATE 14, 48: PRINT "(4)"
      OUT sai, S4
      IF PushBoton = 0 THEN
         OUT sai, S0
         COLOR 15, Cback%: LOCATE 14, 48: PRINT "(4)"
      END IF
   END IF

   IF opcao$ = "5" THEN
      COLOR 15, Cback%: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
      COLOR 12, Cback%: LOCATE 14, 54: PRINT "(5)"
      OUT sai, S5
      IF PushBoton = 0 THEN
         OUT sai, S0
         COLOR 15, Cback%: LOCATE 14, 54: PRINT "(5)"
       END IF
   END IF

   IF opcao$ = "6" THEN
      COLOR 15, Cback%: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
      COLOR 12, Cback%: LOCATE 14, 60: PRINT "(6)"
      OUT sai, S6
      IF PushBoton = 0 THEN
         OUT sai, S0
         COLOR 15, Cback%: LOCATE 14, 60: PRINT "(6)"
      END IF
   END IF

   IF opcao$ = "7" THEN
      COLOR 15, Cback%: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
      COLOR 12, Cback%: LOCATE 14, 66: PRINT "(7)"
      OUT sai, S7
      IF PushBoton = 0 THEN
         OUT sai, S0
         COLOR 15, Cback%: LOCATE 14, 66: PRINT "(7)"
      END IF
   END IF

   IF opcao$ = "8" THEN
      COLOR 15, Cback%: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
      COLOR 12, Cback%: LOCATE 14, 72: PRINT "(8)"
      OUT sai, S8
      IF PushBoton = 0 THEN
         OUT sai, S0
         COLOR 15, Cback%: LOCATE 14, 72: PRINT "(8)"
      END IF
   END IF

   IF opcao$ = CHR$(13) THEN
      PushBoton = (NOT (PushBoton))
      IF PushBoton = -1 THEN PushBoton = 1
      IF PushBoton = -2 THEN PushBoton = 0
      COLOR 15, Cback%: LOCATE 19, 4: PRINT "Push Boton "; PushBoton; "   <Enter> "
   END IF

   IF opcao$ = "+" THEN
      OUT sai, S0
      COLOR 15, Cback%: LOCATE 14, 30: PRINT "(1)   (2)   (3)   (4)   (5)   (6)   (7)   (8)"
   END IF

   IF opcao$ = CHR$(27) THEN GOTO 400
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10: GOTO 702



800 'modo automatico
'janela principal do modo automatico
   COLOR Cline, Cback%
   LOCATE 4, 2: PRINT "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
   LOCATE 5, 2: PRINT "³                                                                            ³"
   LOCATE 6, 2: PRINT "³                                                                            ³"
   LOCATE 7, 2: PRINT "³                                                                            ³"
   LOCATE 8, 2: PRINT "³                                                                            ³"
   LOCATE 9, 2: PRINT "³                                                                            ³"
   LOCATE 10, 2: PRINT "³                                                                            ³"
   LOCATE 11, 2: PRINT "³                                                                            ³"
   LOCATE 12, 2: PRINT "³                                                                            ³"
   LOCATE 13, 2: PRINT "³                                                                            ³"
   LOCATE 14, 2: PRINT "³                                                                            ³"
   LOCATE 15, 2: PRINT "³                                                                            ³"
   LOCATE 16, 2: PRINT "³                                                                            ³"
   LOCATE 17, 2: PRINT "³                                                                            ³"
   LOCATE 18, 2: PRINT "³                                                                            ³"
   LOCATE 19, 2: PRINT "³                                                                            ³"
   LOCATE 20, 2: PRINT "³                                                                            ³"
   LOCATE 21, 2: PRINT "³                                                                            ³"
   LOCATE 22, 2: PRINT "³                                                                            ³"
   LOCATE 23, 2: PRINT "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"

'janela do programa do modo automatico

805 'textos da primeira coluna
   COLOR 15, Cback%: LOCATE 5, 28: PRINT comsvx$; " - MODO AUTOMµTICO"
   COLOR 15, Cback%: LOCATE 7, 4: PRINT "Primeira sa¡da    (1)"
   LOCATE 8, 4: PRINT "Segunda sa¡da     (2)"
   LOCATE 9, 4: PRINT "Terceira sa¡da    (3)"
   LOCATE 10, 4: PRINT "Quarta sa¡da      (4)"
   LOCATE 11, 4: PRINT "Quinta sa¡da      (5)"
   LOCATE 12, 4: PRINT "Sexta sa¡da       (6)"
   LOCATE 13, 4: PRINT "S‚tima sa¡da      (7)"
   LOCATE 14, 4: PRINT "Oitava sa¡da      (8)"
   LOCATE 16, 4: PRINT "Executar programa (E)"
   COLOR 7, Cback%:   LOCATE 17, 4: PRINT "Pausar programa   (P)"
   LOCATE 18, 4: PRINT "Cancelar programa (C)"
   COLOR 15, Cback%: LOCATE 19, 4: PRINT "Novo programa     (N)"
   LOCATE 20, 4: PRINT "Definir La‡o      (L)"
   LOCATE 21, 4: PRINT "Tela anterior     <ESC>"



8100 'imprime setas da tela do programa
   COLOR 15, Cprog%: LOCATE 7, 29: PRINT "   Dispositivos       Dura‡Æo          Espera   "
   COLOR 7, Cprog%
   LOCATE 8, 29: PRINT "                                                "
   LOCATE 9, 29: PRINT "                                                "
   LOCATE 10, 29: PRINT "                                                "
   LOCATE 11, 29: PRINT "                                                "
   LOCATE 12, 29: PRINT "                                                "
   LOCATE 13, 29: PRINT "                                                "
   LOCATE 14, 29: PRINT "                                                "
   LOCATE 14, 29: PRINT "                                                "
   LOCATE 15, 29: PRINT "                                                "
   LOCATE 16, 29: PRINT "                                                "
   LOCATE 17, 29: PRINT "                                                "
   LOCATE 18, 29: PRINT "                                                "
   LOCATE 19, 29: PRINT "                                                "
   LOCATE 20, 29: PRINT "                                                "
   LOCATE 21, 29: PRINT "                                                "
   COLOR 15, Cprog%: LOCATE 9, 30: PRINT CHR$(16): LOCATE 9, 46: PRINT CHR$(16): LOCATE 9, 63: PRINT CHR$(16)
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
   COLOR 7, Cback%: LOCATE 23, 4: PRINT "MODO AUTOMµTICO - "; marc$

'imprime as variaveis ativas do modo automatico
   COLOR 15, Cprog%
   LOCATE 9, 32: PRINT sa1: LOCATE 9, 48: PRINT dura1: LOCATE 9, 65: PRINT espe1
   LOCATE 10, 32: PRINT sa2: LOCATE 10, 48: PRINT dura2: LOCATE 10, 65: PRINT espe2
   LOCATE 11, 32: PRINT sa3: LOCATE 11, 48: PRINT dura3: LOCATE 11, 65: PRINT espe3
   LOCATE 12, 32: PRINT sa4: LOCATE 12, 48: PRINT dura4: LOCATE 12, 65: PRINT espe4
   LOCATE 13, 32: PRINT sa5: LOCATE 13, 48: PRINT dura5: LOCATE 13, 65: PRINT espe5
   LOCATE 14, 32: PRINT sa6: LOCATE 14, 48: PRINT dura6: LOCATE 14, 65: PRINT espe6
   LOCATE 15, 32: PRINT sa7: LOCATE 15, 48: PRINT dura7: LOCATE 15, 65: PRINT espe7
   LOCATE 16, 32: PRINT sa8: LOCATE 16, 48: PRINT dura8: LOCATE 16, 65: PRINT espe8
   LOCATE 17, 32: PRINT sa9: LOCATE 17, 48: PRINT dura9: LOCATE 17, 65: PRINT espe9
   LOCATE 18, 32: PRINT sa10: LOCATE 18, 48: PRINT dura10: LOCATE 18, 65: PRINT espe10
   LOCATE 19, 32: PRINT sa11: LOCATE 19, 48: PRINT dura11: LOCATE 19, 65: PRINT espe11
   LOCATE 20, 32: PRINT sa12: LOCATE 20, 48: PRINT dura12: LOCATE 20, 65: PRINT espe12
   LOCATE 21, 32: PRINT sa13: LOCATE 21, 48: PRINT dura13: LOCATE 21, 65: PRINT espe13


'habilita teclado para leitura de dados
801 IF INKEY$ <> "" THEN 801
802 opcao$ = INKEY$: IF opcao$ = "" THEN 802
   IF opcao$ = "E" OR opcao$ = "e" THEN GOTO 830
   IF opcao$ = "L" OR opcao$ = "l" THEN GOTO 810
   IF opcao$ = "N" OR opcao$ = "n" THEN GOTO 820
   IF opcao$ = CHR$(27) THEN GOTO 400
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10: GOTO 802

810 'definir laco do programa
   COLOR 14, Cback%: LOCATE 20, 4: PRINT "La‡o="; Laco; ",alterar? (S/N)"
811 IF INKEY$ <> "" THEN 811
812 opcao$ = INKEY$: IF opcao$ = "" THEN 812
   IF opcao$ = "S" OR opcao$ = "s" THEN GOTO 813
   IF opcao$ = "N" OR opcao$ = "n" THEN GOTO 814
   IF opcao$ = CHR$(27) THEN GOTO 400
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10: GOTO 812
813
   LOCATE 20, 4: PRINT "                         "
   LOCATE 20, 4: INPUT "La‡o do programa= ", Laco
   COLOR 15, Cback%: LOCATE 20, 4: PRINT "Definir La‡o      (L)"
   GOTO 801
814
   LOCATE 20, 4: PRINT "                         "
   COLOR 15, Cback%: LOCATE 20, 4: PRINT "Definir La‡o      (L)"
   GOTO 801


820 'novo programa, le as veriaveis apartir do teclado
'janela do programa do modo automatico

'imprime setas da tela do programa
   COLOR 15, Cprog%: LOCATE 7, 29: PRINT "   Dispositivos       Dura‡Æo          Espera   "
   COLOR 7, Cprog%
   LOCATE 8, 29: PRINT "                                                "
   LOCATE 9, 29: PRINT "                                                "
   LOCATE 10, 29: PRINT "                                                "
   LOCATE 11, 29: PRINT "                                                "
   LOCATE 12, 29: PRINT "                                                "
   LOCATE 13, 29: PRINT "                                                "
   LOCATE 14, 29: PRINT "                                                "
   LOCATE 14, 29: PRINT "                                                "
   LOCATE 15, 29: PRINT "                                                "
   LOCATE 16, 29: PRINT "                                                "
   LOCATE 17, 29: PRINT "                                                "
   LOCATE 18, 29: PRINT "                                                "
   LOCATE 19, 29: PRINT "                                                "
   LOCATE 20, 29: PRINT "                                                "
   LOCATE 21, 29: PRINT "                                                "
   COLOR 15, Cprog%: LOCATE 7, 32: PRINT "Dispositivos       Dura‡Æo          Espera"
   COLOR 15, Cprog%: LOCATE 9, 30: PRINT CHR$(16): LOCATE 9, 46: PRINT CHR$(16): LOCATE 9, 63: PRINT CHR$(16)
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
   COLOR 11, Cback%: LOCATE 23, 4: PRINT "MODO AUTOMµTICO - "; marc$

   COLOR 15, Cprog%
   LOCATE 9, 32: INPUT "", sa1
   SELECT CASE sa1
      CASE IS = 1
      disp1 = S1
      CASE IS = 2
      disp1 = S2
      CASE IS = 3
      disp1 = S3
      CASE IS = 4
      disp1 = S4
      CASE IS = 5
      disp1 = S5
      CASE IS = 6
      disp1 = S6
      CASE IS = 7
      disp1 = S7
      CASE IS = 8
      disp1 = S8
   END SELECT
   LOCATE 9, 48: INPUT "", dura1
   LOCATE 9, 65: INPUT "", espe1

   LOCATE 10, 32: INPUT "", sa2
   SELECT CASE sa2
      CASE IS = 1
      disp2 = S1
      CASE IS = 2
      disp2 = S2
      CASE IS = 3
      disp2 = S3
      CASE IS = 4
      disp2 = S4
      CASE IS = 5
      disp2 = S5
      CASE IS = 6
      disp2 = S6
      CASE IS = 7
      disp2 = S7
      CASE IS = 8
      disp2 = S8
   END SELECT
   LOCATE 10, 48: INPUT "", dura2
   LOCATE 10, 65: INPUT "", espe2

   LOCATE 11, 32: INPUT "", sa3
   SELECT CASE sa3
      CASE IS = 1
      disp3 = S1
      CASE IS = 2
      disp3 = S2
      CASE IS = 3
      disp3 = S3
      CASE IS = 4
      disp3 = S4
      CASE IS = 5
      disp3 = S5
      CASE IS = 6
      disp3 = S6
      CASE IS = 7
      disp3 = S7
      CASE IS = 8
      disp3 = S8
   END SELECT
   LOCATE 11, 48: INPUT "", dura3
   LOCATE 11, 65: INPUT "", espe3

   LOCATE 12, 32: INPUT "", sa4
   SELECT CASE sa4
      CASE IS = 1
      disp4 = S1
      CASE IS = 2
      disp4 = S2
      CASE IS = 3
      disp4 = S3
      CASE IS = 4
      disp4 = S4
      CASE IS = 5
      disp4 = S5
      CASE IS = 6
      disp4 = S6
      CASE IS = 7
      disp4 = S7
      CASE IS = 8
      disp4 = S8
   END SELECT
   LOCATE 12, 48: INPUT "", dura4
   LOCATE 12, 65: INPUT "", espe4

   LOCATE 13, 32: INPUT "", sa5
   SELECT CASE sa5
      CASE IS = 1
      disp5 = S1
      CASE IS = 2
      disp5 = S2
      CASE IS = 3
      disp5 = S3
      CASE IS = 4
      disp5 = S4
      CASE IS = 5
      disp5 = S5
      CASE IS = 6
      disp5 = S6
      CASE IS = 7
      disp5 = S7
      CASE IS = 8
      disp5 = S8
   END SELECT
   LOCATE 13, 48: INPUT "", dura5
   LOCATE 13, 65: INPUT "", espe5

   LOCATE 14, 32: INPUT "", sa6
   SELECT CASE sa6
      CASE IS = 1
      disp6 = S1
      CASE IS = 2
      disp6 = S2
      CASE IS = 3
      disp6 = S3
      CASE IS = 4
      disp6 = S4
      CASE IS = 5
      disp6 = S5
      CASE IS = 6
      disp6 = S6
      CASE IS = 7
      disp6 = S7
      CASE IS = 8
      disp6 = S8
   END SELECT
   LOCATE 14, 48: INPUT "", dura6
   LOCATE 14, 65: INPUT "", espe6

   LOCATE 15, 32: INPUT "", sa7
   SELECT CASE sa7
      CASE IS = 1
      disp7 = S1
      CASE IS = 2
      disp7 = S2
      CASE IS = 3
      disp7 = S3
      CASE IS = 4
      disp7 = S4
      CASE IS = 5
      disp7 = S5
      CASE IS = 6
      disp7 = S6
      CASE IS = 7
      disp7 = S7
      CASE IS = 8
      disp7 = S8
   END SELECT
   LOCATE 15, 48: INPUT "", dura7
   LOCATE 15, 65: INPUT "", espe7

   LOCATE 16, 32: INPUT "", sa8
   SELECT CASE sa8
      CASE IS = 1
      disp8 = S1
      CASE IS = 2
      disp8 = S2
      CASE IS = 3
      disp8 = S3
      CASE IS = 4
      disp8 = S4
      CASE IS = 5
      disp8 = S5
      CASE IS = 6
      disp8 = S6
      CASE IS = 7
      disp8 = S7
      CASE IS = 8
      disp8 = S8
   END SELECT
   LOCATE 16, 48: INPUT "", dura8
   LOCATE 16, 65: INPUT "", espe8

   LOCATE 17, 32: INPUT "", sa9
      SELECT CASE sa9
      CASE IS = 1
      disp9 = S1
      CASE IS = 2
      disp9 = S2
      CASE IS = 3
      disp9 = S3
      CASE IS = 4
      disp9 = S4
      CASE IS = 5
      disp9 = S5
      CASE IS = 6
      disp9 = S6
      CASE IS = 7
      disp9 = S7
      CASE IS = 8
      disp9 = S8
   END SELECT
   LOCATE 17, 48: INPUT "", dura9
   LOCATE 17, 65: INPUT "", espe9

   LOCATE 18, 32: INPUT "", sa10
   SELECT CASE sa10
      CASE IS = 1
      disp10 = S1
      CASE IS = 2
      disp10 = S2
      CASE IS = 3
      disp10 = S3
      CASE IS = 4
      disp10 = S4
      CASE IS = 5
      disp10 = S5
      CASE IS = 6
      disp10 = S6
      CASE IS = 7
      disp10 = S7
      CASE IS = 8
      disp10 = S8
   END SELECT
   LOCATE 18, 48: INPUT "", dura10
   LOCATE 18, 65: INPUT "", espe10

   LOCATE 19, 32: INPUT "", sa11
   SELECT CASE sa11
      CASE IS = 1
      disp11 = S1
      CASE IS = 2
      disp11 = S2
      CASE IS = 3
      disp11 = S3
      CASE IS = 4
      disp11 = S4
      CASE IS = 5
      disp11 = S5
      CASE IS = 6
      disp11 = S6
      CASE IS = 7
      disp11 = S7
      CASE IS = 8
      disp11 = S8
   END SELECT
   LOCATE 19, 48: INPUT "", dura11
   LOCATE 19, 65: INPUT "", espe11

   LOCATE 20, 32: INPUT "", sa12
   SELECT CASE sa12
      CASE IS = 1
      disp12 = S1
      CASE IS = 2
      disp12 = S2
      CASE IS = 3
      disp12 = S3
      CASE IS = 4
      disp12 = S4
      CASE IS = 5
      disp12 = S5
      CASE IS = 6
      disp12 = S6
      CASE IS = 7
      disp12 = S7
      CASE IS = 8
      disp12 = S8
   END SELECT
   LOCATE 20, 48: INPUT "", dura12
   LOCATE 20, 65: INPUT "", espe12

   LOCATE 21, 32: INPUT "", sa13
   SELECT CASE sa13
      CASE IS = 1
      disp13 = S1
      CASE IS = 2
      disp13 = S2
      CASE IS = 3
      disp13 = S3
      CASE IS = 4
      disp13 = S4
      CASE IS = 5
      disp13 = S5
      CASE IS = 6
      disp13 = S6
      CASE IS = 7
      disp13 = S7
      CASE IS = 8
      disp13 = S8
   END SELECT
   LOCATE 21, 48: INPUT "", dura13
   LOCATE 21, 65: INPUT "", espe13

   GOTO 8100


830 'executa programa que foi escrito
   COLOR 15, Cback%:   LOCATE 17, 4: PRINT "Pausar programa   (P)"
   LOCATE 18, 4: PRINT "Cancelar programa (C)"
   FOR l% = 1 TO Laco STEP 1

   COLOR 15, Cprog%
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
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      OUT sai, disp1
      COLOR 12, Cprog%: LOCATE 9, 30: PRINT CHR$(16): LOCATE 9, 46: PRINT CHR$(16)
   NEXT d%
   COLOR 15, Cprog%: LOCATE 9, 30: PRINT CHR$(16): LOCATE 9, 46: PRINT CHR$(16)
   OUT sai, S0
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
   FOR e% = 1 TO espe1 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      COLOR 12, Cprog%: LOCATE 9, 63: PRINT CHR$(16)
   NEXT e%
   COLOR 15, Cprog%: LOCATE 9, 63: PRINT CHR$(16)
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'*****************************************************************************

   FOR d% = 1 TO dura2 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      OUT sai, disp2
      COLOR 12, Cprog%: LOCATE 10, 30: PRINT CHR$(16): LOCATE 10, 46: PRINT CHR$(16)
   NEXT d%
   COLOR 15, Cprog%: LOCATE 10, 30: PRINT CHR$(16): LOCATE 10, 46: PRINT CHR$(16)
   OUT sai, S0
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
   FOR e% = 1 TO espe2 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      COLOR 12, Cprog%: LOCATE 10, 63: PRINT CHR$(16)
   NEXT e%
   COLOR 15, Cprog%: LOCATE 10, 63: PRINT CHR$(16)
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'*****************************************************************************

   FOR d% = 1 TO dura3 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      OUT sai, disp3
      COLOR 12, Cprog%: LOCATE 11, 30: PRINT CHR$(16): LOCATE 11, 46: PRINT CHR$(16)
   NEXT d%
   COLOR 15, Cprog%: LOCATE 11, 30: PRINT CHR$(16): LOCATE 11, 46: PRINT CHR$(16)
   OUT sai, S0
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
   FOR e% = 1 TO espe3 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      COLOR 12, Cprog%: LOCATE 11, 63: PRINT CHR$(16)
   NEXT e%
   COLOR 15, Cprog%: LOCATE 11, 63: PRINT CHR$(16)
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'*****************************************************************************

   FOR d% = 1 TO dura4 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      OUT sai, disp4
      COLOR 12, Cprog%: LOCATE 12, 30: PRINT CHR$(16): LOCATE 12, 46: PRINT CHR$(16)
   NEXT d%
   COLOR 15, Cprog%: LOCATE 12, 30: PRINT CHR$(16): LOCATE 12, 46: PRINT CHR$(16)
   OUT sai, S0
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
   FOR e% = 1 TO espe4 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      COLOR 12, Cprog%: LOCATE 12, 63: PRINT CHR$(16)
   NEXT e%
   COLOR 15, Cprog%: LOCATE 12, 63: PRINT CHR$(16)
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'*****************************************************************************

   FOR d% = 1 TO dura5 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      OUT sai, disp5
      COLOR 12, Cprog%: LOCATE 13, 30: PRINT CHR$(16): LOCATE 13, 46: PRINT CHR$(16)
   NEXT d%
   COLOR 15, Cprog%: LOCATE 13, 30: PRINT CHR$(16): LOCATE 13, 46: PRINT CHR$(16)
   OUT sai, S0
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
   FOR e% = 1 TO espe5 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      COLOR 12, Cprog%: LOCATE 13, 63: PRINT CHR$(16)
   NEXT e%
   COLOR 15, Cprog%: LOCATE 13, 63: PRINT CHR$(16)
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'*****************************************************************************

   FOR d% = 1 TO dura6 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      OUT sai, disp6
      COLOR 12, Cprog%: LOCATE 14, 30: PRINT CHR$(16): LOCATE 14, 46: PRINT CHR$(16)
   NEXT d%
   COLOR 15, Cprog%: LOCATE 14, 30: PRINT CHR$(16): LOCATE 14, 46: PRINT CHR$(16)
   OUT sai, S0
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
   FOR e% = 1 TO espe6 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      COLOR 12, Cprog%: LOCATE 14, 63: PRINT CHR$(16)
   NEXT e%
   COLOR 15, Cprog%: LOCATE 14, 63: PRINT CHR$(16)
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'*****************************************************************************

   FOR d% = 1 TO dura7 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      OUT sai, disp7
      COLOR 12, Cprog%: LOCATE 15, 30: PRINT CHR$(16): LOCATE 15, 46: PRINT CHR$(16)
   NEXT d%
   COLOR 15, Cprog%: LOCATE 15, 30: PRINT CHR$(16): LOCATE 15, 46: PRINT CHR$(16)
   OUT sai, S0
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
   FOR e% = 1 TO espe7 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      COLOR 12, Cprog%: LOCATE 15, 63: PRINT CHR$(16)
   NEXT e%
   COLOR 15, Cprog%: LOCATE 15, 63: PRINT CHR$(16)
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'*****************************************************************************

   FOR d% = 1 TO dura8 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      OUT sai, disp8
      COLOR 12, Cprog%: LOCATE 16, 30: PRINT CHR$(16): LOCATE 16, 46: PRINT CHR$(16)
   NEXT d%
   COLOR 15, Cprog%: LOCATE 16, 30: PRINT CHR$(16): LOCATE 16, 46: PRINT CHR$(16)
   OUT sai, S0
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
   FOR e% = 1 TO espe8 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      COLOR 12, Cprog%: LOCATE 16, 63: PRINT CHR$(16)
   NEXT e%
   COLOR 15, Cprog%: LOCATE 16, 63: PRINT CHR$(16)
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'*****************************************************************************

   FOR d% = 1 TO dura9 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      OUT sai, disp9
      COLOR 12, Cprog%: LOCATE 17, 30: PRINT CHR$(16): LOCATE 17, 46: PRINT CHR$(16)
   NEXT d%
   COLOR 15, Cprog%: LOCATE 17, 30: PRINT CHR$(16): LOCATE 17, 46: PRINT CHR$(16)
   OUT sai, S0
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
   FOR e% = 1 TO espe9 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      COLOR 12, Cprog%: LOCATE 17, 63: PRINT CHR$(16)
   NEXT e%
   COLOR 15, Cprog%: LOCATE 17, 63: PRINT CHR$(16)
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'*****************************************************************************

   FOR d% = 1 TO dura10 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      OUT sai, disp10
      COLOR 12, Cprog%: LOCATE 18, 30: PRINT CHR$(16): LOCATE 18, 46: PRINT CHR$(16)
   NEXT d%
   COLOR 15, Cprog%: LOCATE 18, 30: PRINT CHR$(16): LOCATE 18, 46: PRINT CHR$(16)
   OUT sai, S0
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
   FOR e% = 1 TO espe10 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      COLOR 12, Cprog%: LOCATE 18, 63: PRINT CHR$(16)
   NEXT e%
   COLOR 15, Cprog%: LOCATE 18, 63: PRINT CHR$(16)
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'*****************************************************************************

   FOR d% = 1 TO dura11 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      OUT sai, disp11
      COLOR 12, Cprog%: LOCATE 19, 30: PRINT CHR$(16): LOCATE 19, 46: PRINT CHR$(16)
   NEXT d%
   COLOR 15, Cprog%: LOCATE 19, 30: PRINT CHR$(16): LOCATE 19, 46: PRINT CHR$(16)
   OUT sai, S0
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
   FOR e% = 1 TO espe11 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      COLOR 12, Cprog%: LOCATE 19, 63: PRINT CHR$(16)
   NEXT e%
   COLOR 15, Cprog%: LOCATE 19, 63: PRINT CHR$(16)
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'*****************************************************************************

   FOR d% = 1 TO dura12 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      OUT sai, disp12
      COLOR 12, Cprog%: LOCATE 20, 30: PRINT CHR$(16): LOCATE 20, 46: PRINT CHR$(16)
   NEXT d%
   COLOR 15, Cprog%: LOCATE 20, 30: PRINT CHR$(16): LOCATE 20, 46: PRINT CHR$(16)
   OUT sai, S0
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
   FOR e% = 1 TO espe12 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      COLOR 12, Cprog%: LOCATE 20, 63: PRINT CHR$(16)
   NEXT e%
   COLOR 15, Cprog%: LOCATE 20, 63: PRINT CHR$(16)
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'*****************************************************************************

   FOR d% = 1 TO dura13 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      OUT sai, disp13
      COLOR 12, Cprog%: LOCATE 21, 30: PRINT CHR$(16): LOCATE 21, 46: PRINT CHR$(16)
   NEXT d%
   COLOR 15, Cprog%: LOCATE 21, 30: PRINT CHR$(16): LOCATE 21, 46: PRINT CHR$(16)
   OUT sai, S0
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
   FOR e% = 1 TO espe13 STEP 1
      opcao$ = INKEY$
      IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
      IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
      IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:
      COLOR 12, Cprog%: LOCATE 21, 63: PRINT CHR$(16)
   NEXT e%
   COLOR 15, Cprog%: LOCATE 21, 63: PRINT CHR$(16)
   opcao$ = INKEY$
   IF opcao$ = "P" OR opcao$ = "p" THEN DO WHILE INKEY$ <> CHR$(13): LOOP
   IF opcao$ = "C" OR opcao$ = "c" THEN OUT (sai), S0: GOTO 805
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10:

'*****************************************************************************

   NEXT l% 'repeticao do laco
   GOTO 805 'volta para o menu do modo automatico


1100 'configurar saida
   COLOR Cline, Cwin%
   LOCATE 12, 27: PRINT "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
   LOCATE 13, 27: PRINT "³                          ³"
   LOCATE 14, 27: PRINT "³                          ³"
   LOCATE 15, 27: PRINT "³                          ³"
   LOCATE 16, 27: PRINT "³                          ³"
   LOCATE 17, 27: PRINT "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"

   IF sai = Lpt1 THEN Outpoot$ = "LPT1  "
   IF sai = Lpt2 THEN Outpoot$ = "LPT2  "

   COLOR 7, Cwin%: LOCATE 13, 29: PRINT "Escolha a porta de sa¡da"
   COLOR 15, Cwin%: LOCATE 14, 31: PRINT "LPT1 (1)    LPT2 (2)"
   COLOR 7, Cwin%: LOCATE 16, 34: PRINT "Atual em "; Outpoot$
1102 IF INKEY$ <> "" THEN 1102
1103 opcao$ = INKEY$: IF opcao$ = "" THEN 1103
   IF opcao$ = "1" THEN sai = Lpt1: GOTO 1100
   IF opcao$ = "2" THEN sai = Lpt2: GOTO 1100
   IF opcao$ = CHR$(27) OR opcao$ = CHR$(13) THEN GOTO 400
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10: GOTO 1103

2500 'suspende execucao
   CLS
   SCREEN 9
   SCREEN 0
   COLOR 15
   LOCATE 1, 1: PRINT "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
   LOCATE 2, 1: PRINT "³                                   "; comsvx$; "                                    ³"
   LOCATE 3, 1: PRINT "³ Controlador Multifun‡Æo via Software                                         ³"
   LOCATE 4, 1: PRINT "³ "; marc$; "                          ³"
   LOCATE 5, 1: PRINT "³                                                                              ³"
   LOCATE 6, 1: PRINT "³ Digite EXIT para retornar ao "; comsvx$; "                                         ³"
   LOCATE 7, 1: PRINT "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
   PRINT ;
   PRINT ;
   PRINT ;
   SHELL
   GOTO 300


3000 'sai do programa
   COLOR Cline, Cwin%
   LOCATE 12, 27: PRINT "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
   LOCATE 13, 27: PRINT "³                           ³"
   LOCATE 14, 27: PRINT "³                           ³"
   LOCATE 15, 27: PRINT "³                           ³"
   LOCATE 16, 27: PRINT "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"

   COLOR 7, Cwin%: LOCATE 13, 30: PRINT "Deseja realmente sair ?"
   COLOR 15, Cwin%: LOCATE 15, 33: PRINT "Sim (S)   NÆo (N)"
3001 IF INKEY$ <> "" THEN 3001
3002 opcao$ = INKEY$: IF opcao$ = "" THEN 3002
   IF opcao$ = "N" OR opcao$ = "n" THEN GOTO 400
   IF opcao$ = "S" OR opcao$ = "s" THEN SCREEN 0: COLOR 7, 0: CLS : SYSTEM
   IF opcao$ = CHR$(27) THEN GOTO 400
   IF opcao$ <> "" THEN SOUND 293.66, 18.2 / 15: SOUND 32767, 18.2 / 10: GOTO 3002


   'Inicio da producao do programa
   'Sao Paulo, 24 de junho de 1995 - sabado
   'Marcio de Sousa Pessoa
   'Praca Tito Pacheco 24-A Jardim Miriam
   'Sao Paulo -SP- ,  Brasil,  Planeta Terra,  Via Lactea (Sistema Solar)

   'Finalizacao da producao do programa
   'SÆo Paulo, 24 de julho de 1996 - quarta feira
   'Marcio de Sousa Pessoa
   'e-mail: marciomexicano@zipmail.com.br
   'Praca Tito Pacheco 24-A Jardim Miriam
   'Sao Paulo -SP- ,  Brasil,  Planeta Terra,  Via Lactea (Sistema Solar)

