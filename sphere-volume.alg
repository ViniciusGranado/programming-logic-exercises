algoritmo "Volume Esfera"
// Autor : Vin�cius Granado
// Data : 09/04/2020

//------------------------------------------------------------------------+
// Descri��o   : Algoritmo calcula o volume de uma esfera.
//
//               Basta o usu�rio inserir o valor do raio para o c�lculo
//               do volume da esfera ser efetuado.
//
//               F�rmula:  V = (4/3 * (Pi * raio^3))
//
//               Exibe o c�lculo e o resultado volume da esfera.
//------------------------------------------------------------------------+
var
//Declara��o de vari�veis
radius, volume: real

inicio
// Se��o de Comandos 

//Apresenta��o do programa

EscrevaL("                         ******************************")
EscrevaL("                         CALCULE O VOLUME DE UMA ESFERA")
EscrevaL("                         ******************************")
EscrevaL()
EscrevaL("Este software ir� realizar o c�lculo do volume de uma esfera.")
EscrevaL("Para utiliza-lo, apenas insira abaixo o Raio da esfera.")
EscrevaL()

//Inser��o do Raio pelo usu�rio
Escreva("Qual � o Raio da esfera? ")
leia(radius)

//Resultado final
volume <- ( (4/3) * (Pi) * (radius^3) )

EscrevaL()
EscrevaL("                         ******************************")
EscrevaL("                                    RESULTADO")
EscrevaL("                         ******************************")
Escreval()
EscrevaL("A formula utilizada para calcular o volume de uma esfera � a ")
EscrevaL("seguinte: Volume = (4/3) * Pi * (Raio^3) ")
EscrevaL()
EscrevaL("Considerando um raio de ", radius, ", temos um volume de: ", volume)

Escreva("Finalizando...")

fimalgoritmo
