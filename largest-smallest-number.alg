algoritmo "Maior e menor número"
// Autor : Vinícius Granado
// Data : 10/04/2020

//Descrição: O usuário digita 5 números, o programa então
//           calcula e mostra o maior e o menor valor.

var
//Declaração de variáveis
number, smallestNumber, largestNumber: real
C: inteiro
inicio
// Seção de Comandos 

//Apresentação do programa
EscrevaL("                        -----------------------------------")
EscrevaL("                        |      MAIOR E MENOR NUMERO       |")
EscrevaL("                        -----------------------------------")
EscrevaL()
EscrevaL("Este programa irá calcular quais foram o maior e o menor valor inserido")
EscrevaL("pelo usuário. Para utilizá-lo, digite 5 números abaixo: ")
EscrevaL()

//Inserção e cálculo de valores
Para C de 1 ate 5 faca//Loop de 5 repetições
     Escreva("Digite o ",C,"º número: ")
     leia(number)
     Se (number>largestNumber) entao//Calcula se é o maior valor
        largestNumber <- number
     FimSe
     Se(C=1) entao//Considera o primeiro valor(primeira repetição do loop) como menor
         smallestNumber <- number
     Senao
          Se (number<smallestNumber) entao//Calcula se é o menor valor
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
