algoritmo "N�meros Primos"
// Autor : Vin�cius Granado
// Data : 10/04/2020

//Descri��o: O programa recebe um n�mero digitado pelo usu�rio, e
//           ent�o calcula e mostra se o mesmo � um n�mero primo.

var
//Declara��o de vari�veis
number: inteiro
resultIsPrime: logico

//Fun��o "Verifica se o n�mero � primo"
funcao isPrime(X: inteiro): logico
var C, totalOfRemainders: inteiro

inicio
      Para C de 1 ate X faca
          Se (X%C=0) entao//Verifica se o resto da divis�o � 0
              totalOfRemainders <- totalOfremainders+1 //Se for, adiciona 1 ao total
          FimSe
      FimPara
      
      Se (totalOfRemainders=2) entao//Um n�mero primo tem apenas dois divisores
          retorne verdadeiro
      Senao//Se o total de restos foi diferente de 2, o n�mero n�o � primo
          retorne falso
      FimSe
FimFuncao

inicio
// Se��o de Comandos 

//Apresenta��o do programa
EscrevaL("                                ******************")
EscrevaL("                                * N�MEROS PRIMOS *")
EscrevaL("                                ******************")
EscrevaL()
EscrevaL("Este programa ir� informar se o n�mero digitado pelo usu�rio � um ")
EscrevaL("n�mero primo. Para utiliz�-lo, insira o n�mero abaixo: ")
EscrevaL()

//Inser��o e calculo do n�mero
Escreva("Digite um n�mero inteiro: ")
leia(number)
EscrevaL()

resultIsPrime <- isPrime(number)//Vari�vel recebe resultado, � um n�mero primo?

//Resultado final
EscrevaL("                                ******************")
EscrevaL("                                *    RESULTADO   *")
EscrevaL("                                ******************")
EscrevaL()


Se (resultIsPrime) entao
   Escreval("O n�mero", number, " � um n�mero primo.")
Senao
   EscrevaL("O n�mero", number, " n�o � um n�mero primo.")
FimSe


fimalgoritmo
