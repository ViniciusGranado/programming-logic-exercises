algoritmo "Fatorial"
// Autor : Vin�cius Rafael Granado
// Data : 13/04/2020

//Descri��o: Este programa recebe um n�mero do usu�rio, realiza os c�lculos
//           necess�rios, e retorna o fatorial do mesmo.

var
userNumber, factorial: inteiro

//Fun��o calcula Fatorial
funcao getFactorial(X: inteiro): inteiro
inicio
Se (X=0) entao
     retorne 1
senao
     retorne X*getFactorial(X-1)
FimSe
fimFuncao

inicio
// Se��o de Comandos

//Apresenta��o do programa
EscrevaL("                                  ------------")
EscrevaL("                                  | FATORIAL |")
EscrevaL("                                  ------------")
EscrevaL()
EscrevaL("Este programa ir� mostrar o fatorial de um n�mero que voc� digitar.")
EscrevaL("Escreva o n�mero desejado abaixo.")
Escreval()

//Entrada do n�mero pelo usu�rio:
Escreva("Digite um n�mero: ")
leia(userNumber)
EscrevaL()

factorial <- getFactorial(userNumber)

//Resultado final
EscrevaL("                                  -------------")
EscrevaL("                                  | RESULTADO |")
EscrevaL("                                  -------------")
EscrevaL()

EscrevaL("O fatorial de", userNumber, " �", factorial)
fimalgoritmo
