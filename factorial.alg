algoritmo "Fatorial"
// Autor : Vinícius Rafael Granado
// Data : 13/04/2020

//Descrição: Este programa recebe um número do usuário, realiza os cálculos
//           necessários, e retorna o fatorial do mesmo.

var
userNumber, factorial: inteiro

//Função calcula Fatorial
funcao getFactorial(X: inteiro): inteiro
inicio
Se (X=0) entao
     retorne 1
senao
     retorne X*getFactorial(X-1)
FimSe
fimFuncao

inicio
// Seção de Comandos

//Apresentação do programa
EscrevaL("                                  ------------")
EscrevaL("                                  | FATORIAL |")
EscrevaL("                                  ------------")
EscrevaL()
EscrevaL("Este programa irá mostrar o fatorial de um número que você digitar.")
EscrevaL("Escreva o número desejado abaixo.")
Escreval()

//Entrada do número pelo usuário:
Escreva("Digite um número: ")
leia(userNumber)
EscrevaL()

factorial <- getFactorial(userNumber)

//Resultado final
EscrevaL("                                  -------------")
EscrevaL("                                  | RESULTADO |")
EscrevaL("                                  -------------")
EscrevaL()

EscrevaL("O fatorial de", userNumber, " é", factorial)
fimalgoritmo
