algoritmo "Calculadora de multiplica��o."
// Autor : Vin�cius Granado
// Data : 07/04/2020

//------------------------------------------------------------------------+
// Descri��o   : Algoritmo que recebe dois n�meros.
//
//               Efetua a multiplica��o destes.
//
//               Exibe o c�lculo e o resultado da multiplica��o.
//------------------------------------------------------------------------+
var
//Declara��o de vari�veis:
number1, number2, productResult: inteiro
inicio
// Se��o de Comandos 

//Apresenta��o do programa
escrevaL("                         -----------------------------")
escrevaL("                        |CALCULADORA DE MULTIPLICA��O |")
escrevaL("                         -----------------------------")
EscrevaL("Este software ir� lhe auxiliar no c�lculo do produto de dois valores.")
EscrevaL("Para utiliza-lo, insira os valores abaixo: ")
EscrevaL()

// Declara��o de valores pelo usu�rio:
escreva("Digite o primeiro n�mero: ")
leia(number1)
escreva("Digite o segundo n�mero: ")
leia(number2)

//C�lculo do resultado:
productResult <- number1*number2
Escreval()

//Exibi��o do resultado final:
escrevaL("O resultado de ", number1, " *", number2," � igual � ", productResult)
escreva("Finalizando...")
fimalgoritmo
