algoritmo "Jogo da Velha"
// Autor :
// Data : 04/05/2020

//Descrição: Programe um jogo da velha.

var
// Seção de Declarações
jogo: vetor [0..2, 0..2] de caractere
L, C, posicao, controle: inteiro
jogador_simbolo: caractere
jogo_acabou, jogada_valida: logico

//Procedimento Mostra jogo na tela
procedimento mostra_jogo():
var
controle: inteiro
inicio
    controle <- 1

    EscrevaL("+---+---+---+")
    Para L de 0 ate 2 faca
        Escreva("|")
        Para C de 0 ate 2 faca
            Se jogo[L, C] = "" entao
               Escreva(controle:3, "|")
            Senao
               Escreva("  ", jogo[L, C], "|")
            FimSe
            controle <- controle + 1
        FimPara
        EscrevaL()
        EscrevaL("+---+---+---+")
    FimPara
FimProcedimento


//Procedimento insere jogada no vetor do jogo
procedimento inserir_jogada (jogada:inteiro; jogador: caractere)
inicio
    escolha jogada
        caso 1
            jogo[0, 0] <- jogador
        caso 2
            jogo[0, 1] <- jogador
        caso 3
            jogo[0, 2] <- jogador
        caso 4
            jogo[1, 0] <- jogador
        caso 5
            jogo[1, 1] <- jogador
        caso 6
            jogo[1, 2] <- jogador
        caso 7
            jogo[2, 0] <- jogador
        caso 8
            jogo[2, 1] <- jogador
        caso 9
            jogo[2, 2] <- jogador
        FimEscolha
FimProcedimento


//Função verifica se a jogada foi válida
Funcao verificar_jogada(jogada:inteiro): logico

inicio
    
    escolha jogada
        caso 1
            retorne (jogo[0, 0] = "")
        caso 2
            retorne (jogo[0, 1] = "")
        caso 3
            retorne (jogo[0, 2] = "")
        caso 4
            retorne (jogo[1, 0] = "")
        caso 5
            retorne (jogo[1, 1] = "")
        caso 6
            retorne (jogo[1, 2] = "")
        caso 7
            retorne (jogo[2, 0] = "")
        caso 8
            retorne (jogo[2, 1] = "")
        caso 9
            retorne (jogo[2, 2] = "")
        FimEscolha
FimFuncao


//Funcão verifica se algum jogador ganhou
funcao verificar_jogo(): logico
var acabou: logico

inicio
    acabou <- falso
    
    //Verificar linhas
    Para L de 0 ate 2 faca
         Se ((jogo[L, 0] = "X") e (jogo[L, 1] = "X") e (jogo[L, 2] = "X")) ou ((jogo[L, 0] = "O") e (jogo[L, 1] = "O") e (jogo[L, 2] = "O")) entao
            acabou <- verdadeiro
         FimSe
    FimPara
    
    //Verificar colunas
    Para C de 0 ate 2 faca
         Se ((jogo[0, C] = "X") e (jogo[1, C] = "X") e (jogo[2, C] = "X")) ou ((jogo[0, C] = "O") e (jogo[1, C] = "O") e (jogo[2, C] = "O")) entao
            acabou <- verdadeiro
         FimSe
    FimPara
    
    //Verificar diagonais
    Se ((jogo[0, 0] = "X") e (jogo[1, 1] = "X") e (jogo[2, 2] = "X")) ou ((jogo[0, 0] = "O") e (jogo[1, 1] = "O") e (jogo[2, 2] = "O")) entao
       acabou <- verdadeiro
    FimSe
    
    Se ((jogo[0, 2] = "X") e (jogo[1, 1] = "X") e (jogo[2, 0] = "X")) ou ((jogo[0, 2] = "O") e (jogo[1, 1] = "O") e (jogo[2, 0] = "O")) entao
       acabou <- verdadeiro
    FimSe
    
    retorne acabou
FimFuncao


inicio
// Seção de Comandos
controle <- 0//Controla quantas rodadas já se passaram e a vez de cada jogador
jogo_acabou <- Falso//Verifica se o jogo já acabou

Enquanto (nao jogo_acabou) e (controle < 9) faca

   Se (controle % 2 = 0) entao
       jogador_simbolo <- "X"
   Senao
       jogador_simbolo <- "O"
   FimSe
   
   mostra_jogo()
   
   Repita
      Escreva("Vai jogar [", jogador_simbolo, "] em qual posição? ")
      leia(posicao)
      jogada_valida <- verificar_jogada(posicao)
      
      Se nao jogada_valida entao
         EscrevaL("JOGADA INVÁLIDA!")
      FimSe
   ate jogada_valida

   inserir_jogada(posicao, jogador_simbolo)
   LimpaTela
   controle <- controle + 1
   
   jogo_acabou <- verificar_jogo

FimEnquanto

//Resultado final
mostra_jogo()
EscrevaL("JOGO FINALIZADO!!!")

se (controle < 9) entao
   Se ((controle-1)% 2 = 0) entao
      Escreva("JOGADOR X GANHOU!")
   Senao

      Escreva("JOGADOR O GANHOU!")
   FimSe
Senao
   EscrevaL("DEU VELHA!")
FimSe

fimalgoritmo
