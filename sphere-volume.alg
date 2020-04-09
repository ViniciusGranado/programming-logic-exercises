algoritmo "Volume Esfera"
// Autor : Vinícius Granado
// Data : 09/04/2020

//------------------------------------------------------------------------+
// Descrição   : Algoritmo calcula o volume de uma esfera.
//
//               Basta o usuário inserir o valor do raio para o cálculo
//               do volume da esfera ser efetuado.
//
//               Fórmula:  V = (4/3 * (Pi * raio^3))
//
//               Exibe o cálculo e o resultado volume da esfera.
//------------------------------------------------------------------------+
var
//Declaração de variáveis
radius, volume: real

inicio
// Seção de Comandos 

//Apresentação do programa

EscrevaL("                         ******************************")
EscrevaL("                         CALCULE O VOLUME DE UMA ESFERA")
EscrevaL("                         ******************************")
EscrevaL()
EscrevaL("Este software irá realizar o cálculo do volume de uma esfera.")
EscrevaL("Para utiliza-lo, apenas insira abaixo o Raio da esfera.")
EscrevaL()

//Inserção do Raio pelo usuário
Escreva("Qual é o Raio da esfera? ")
leia(radius)

//Resultado final
volume <- ( (4/3) * (Pi) * (radius^3) )

EscrevaL()
EscrevaL("                         ******************************")
EscrevaL("                                    RESULTADO")
EscrevaL("                         ******************************")
Escreval()
EscrevaL("A formula utilizada para calcular o volume de uma esfera é a ")
EscrevaL("seguinte: Volume = (4/3) * Pi * (Raio^3) ")
EscrevaL()
EscrevaL("Considerando um raio de ", radius, ", temos um volume de: ", volume)

Escreva("Finalizando...")

fimalgoritmo
