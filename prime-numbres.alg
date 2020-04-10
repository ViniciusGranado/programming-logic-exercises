algoritmo "Números Primos"
// Autor : Vinícius Granado
// Data : 10/04/2020

//Descrição: O programa recebe um número digitado pelo usuário, e
//           então calcula e mostra se o mesmo é um número primo.

var
//Declaração de variáveis
number: inteiro
resultIsPrime: logico

//Função "Verifica se o número é primo"
funcao isPrime(X: inteiro): logico
var C, totalOfRemainders: inteiro

inicio
      Para C de 1 ate X faca
          Se (X%C=0) entao//Verifica se o resto da divisão é 0
              totalOfRemainders <- totalOfremainders+1 //Se for, adiciona 1 ao total
          FimSe
      FimPara
      
      Se (totalOfRemainders=2) entao//Um número primo tem apenas dois divisores
          retorne verdadeiro
      Senao//Se o total de restos foi diferente de 2, o número não é primo
          retorne falso
      FimSe
FimFuncao

inicio
// Seção de Comandos 

//Apresentação do programa
EscrevaL("                                ******************")
EscrevaL("                                * NÚMEROS PRIMOS *")
EscrevaL("                                ******************")
EscrevaL()
EscrevaL("Este programa irá informar se o número digitado pelo usuário é um ")
EscrevaL("número primo. Para utilizá-lo, insira o número abaixo: ")
EscrevaL()

//Inserção e calculo do número
Escreva("Digite um número inteiro: ")
leia(number)
EscrevaL()

resultIsPrime <- isPrime(number)//Variável recebe resultado, é um número primo?

//Resultado final
EscrevaL("                                ******************")
EscrevaL("                                *    RESULTADO   *")
EscrevaL("                                ******************")
EscrevaL()


Se (resultIsPrime) entao
   Escreval("O número", number, " é um número primo.")
Senao
   EscrevaL("O número", number, " não é um número primo.")
FimSe


fimalgoritmo
