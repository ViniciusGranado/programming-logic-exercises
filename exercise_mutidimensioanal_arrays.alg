algoritmo "Exerc�cio - Arrays Multidimensionais"
// Autor : Vin�cius Granado
// Data : 04/05/2020

// Descri��o: Programa monta uma matriz de ordem 4 com valores inseridos
//            pelo usu�rio. Mostra ent�o um menu de op��es, onde o usu�rio
//            escolhe se o programa exibe a matriz completa, a diagonal
//            principal, o tri�ngulo superior ou o tri�ngulo inferior.


var
//Declara��o de vari�veis:
L, C, opcao: inteiro
controle: logico
valores_matriz: vetor [0..3, 0..3] de inteiro


//Procedimento monta a matriz
procedimento monta_matriz():
inicio
Para L de 0 ate 3 faca
     para C de 0 ate 3 faca:
          Escreva("Digite o valor para a posi��o [", L+1, ",", C+1,"]: ")
          leia(valores_matriz[l,c])
     FimPara
FimPara
FimProcedimento


//Procedimento mostra a matriz completa
procedimento mostra_matriz_cheia():
inicio
para L de 0 ate 3 faca
     para C de 0 ate 3 faca
          escreva(valores_matriz[L, C]:4)
     FimPara
     EscrevaL()
FimPara
EscrevaL()
FimProcedimento


//Procedimento mostra a diagonal principal
procedimento mostra_diagonal():
inicio
Para L de 0 ate 3 faca
     Para C de 0 ate 3 faca
          se (L = C) entao
             Escreva(valores_matriz[L, C]:4)
          Senao
              Escreva("":4)
          FimSe
     FimPara
     EscrevaL()
FimPara
EscrevaL()
FimProcedimento


//Procedimento mostra o tri�ngulo superior
procedimento mostra_triangulo_superior():
inicio
Para L de 0 ate 3 faca
     Para C de 0 ate 3 faca
          se (L <> C) e (C>L) entao
             Escreva(valores_matriz[L, C]:4)
          Senao
              Escreva("":4)
          FimSe
     FimPara
     EscrevaL()
FimPara
EscrevaL()
FimProcedimento


//Procedimento mostra tri�ngulo inferior
procedimento mostra_triangulo_inferior():
inicio
Para L de 0 ate 3 faca
     Para C de 0 ate 3 faca
          se (L <> C) e (C<L) entao
             Escreva(valores_matriz[L, C]:4)
          Senao
              Escreva("":4)
          FimSe
     FimPara
     EscrevaL()
FimPara
EscrevaL()
FimProcedimento


//Procedimento mostra menu na tela
procedimento mostra_menu():
inicio
EscrevaL("MENU DE OP��ES")
EscrevaL("==============")
EscrevaL("[1] Mostrar a Matriz")
EscrevaL("[2] Diagonal Principal")
EscrevaL("[3] Tri�ngulo Superior")
EscrevaL("[4] Tri�ngulo Inferior")
EscrevaL("[5] Sair")
EscrevaL("===== OP��O:")
FimProcedimento


inicio
// Se��o de Comandos

//Usu�rio insere os valores da matriz
monta_matriz()
LimpaTela

//Mostra o menu e l� a op��o escolhida pelo usu�rio
repita
   mostra_menu()
   leia(opcao)
   LimpaTela
   
   escolha opcao
       caso 1
           mostra_matriz_cheia()
       caso 2
           mostra_diagonal()
       caso 3
           mostra_triangulo_superior()
       caso 4
           mostra_triangulo_inferior()
       caso 5
           Escreva("ENCERRANDO...")
       outrocaso
           EscrevaL("ERRO: OP��O INV�LIDA")
    FimEscolha
Ate (opcao = 5)

fimalgoritmo
