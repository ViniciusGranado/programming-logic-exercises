algoritmo "Maior e menor n�mero"
// Autor : Vin�cius Granado
// Data : 10/04/2020

//Descri��o: O usu�rio digita 5 n�meros, o programa ent�o
//           calcula e mostra o maior e o menor valor.

var
//Declara��o de vari�veis
number, smallestNumber, largestNumber: real
C: inteiro
inicio
// Se��o de Comandos 

//Apresenta��o do programa
EscrevaL("                        -----------------------------------")
EscrevaL("                        |      MAIOR E MENOR NUMERO       |")
EscrevaL("                        -----------------------------------")
EscrevaL()
EscrevaL("Este programa ir� calcular quais foram o maior e o menor valor inserido")
EscrevaL("pelo usu�rio. Para utiliz�-lo, digite 5 n�meros abaixo: ")
EscrevaL()

//Inser��o e c�lculo de valores
Para C de 1 ate 5 faca//Loop de 5 repeti��es
     Escreva("Digite o ",C,"� n�mero: ")
     leia(number)
     Se (number>largestNumber) entao//Calcula se � o maior valor
        largestNumber <- number
     FimSe
     Se(C=1) entao//Considera o primeiro valor(primeira repeti��o do loop) como menor
         smallestNumber <- number
     Senao
          Se (number<smallestNumber) entao//Calcula se � o menor valor
             smallestNumber <- number
          FimSe
     FimSe
FimPara
EscrevaL()

//Resultado final
EscrevaL("                        -----------------------------------")
EscrevaL("                        |            RESULTADO            |")
EscrevaL("                        -----------------------------------")
EscrevaL()
EscrevaL("O maior valor digitado foi: ",largestNumber)
EscrevaL("O menor valor digitado foi: ",smallestNumber)
     
fimalgoritmo
