algoritmo "Calculadora de multiplicação."
// Autor : Vinícius Granado
// Data : 07/04/2020

//------------------------------------------------------------------------+
// Descrição   : Algoritmo que recebe dois números.
//
//               Efetua a multiplicação destes.
//
//               Exibe o cálculo e o resultado da multiplicação.
//------------------------------------------------------------------------+
var
//Declaração de variáveis:
number1, number2, productResult: inteiro
inicio
// Seção de Comandos 

//Apresentação do programa
escrevaL("                         -----------------------------")
escrevaL("                        |CALCULADORA DE MULTIPLICAÇÃO |")
escrevaL("                         -----------------------------")
EscrevaL("Este software irá lhe auxiliar no cálculo do produto de dois valores.")
EscrevaL("Para utiliza-lo, insira os valores abaixo: ")
EscrevaL()

// Declaração de valores pelo usuário:
escreva("Digite o primeiro número: ")
leia(number1)
escreva("Digite o segundo número: ")
leia(number2)

//Cálculo do resultado:
productResult <- number1*number2
Escreval()

//Exibição do resultado final:
escrevaL("O resultado de ", number1, " *", number2," é igual à ", productResult)
escreva("Finalizando...")
fimalgoritmo
