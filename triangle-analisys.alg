algoritmo "Análise de Triângulos"
// Autor : Vinícius Granado
// Data : 09/04/2020


//------------------------------------------------------------------------+
// Descrição   : Algoritmo recebe três valores A , B e C respectivamente.
//
//               Verifica se eles podem ser os comprimentos dos lados de
//               um triângulo.
//
//               Se forem , verifica se compõem um triângulo EQUILÁTERO ,
//               ISÓSCELES ou ESCALENO.
//
//               Exibe em tela se os valores formam ou não um triângulo.
//------------------------------------------------------------------------+

var
//Declaração de variáveis
A, B, C: real
isTriangle: logico
typeOfTriangle: caractere

//Função "Analisa se o triângulo é possível"
funcao checkIsTriangle(A, B, C: real): logico

inicio
      Se (A+B<=C) ou (A+C<=B) ou (B+C<=A) entao
         retorne falso
      Senao
         retorne verdadeiro
      FimSe
FimFuncao

//Função "Analisa o tipe do triângulo"
funcao checkTypeOfTriangle(A, B, C: real): caractere

inicio
      Se (A=B) e (B=C) entao
         retorne("Equilátero")
      Senao
          Se ((A=B) e (B<>C)) ou ((A=C) e (C<>B)) ou ((B=C) e (A<>C)) entao
              retorne("Isósceleces")
          Senao
              Se (A<>B) e (B<>C) entao
                  retorne("Escaleno")
              FimSe
          FimSe
      FimSe
FimFuncao

//Seção de Comandos
inicio


//Apresentação do programa
EscrevaL("                        --------------------------------")
EscrevaL("                        ANÁLISE DE LADOS DE UM TRIÂNGULO")
EscrevaL("                        --------------------------------")
EscrevaL()
EscrevaL("Este programa irá analisar os lados de um triângulo informado")
EscrevaL("pelo usuário. Para utilizá-lo, insira abaixo as medidas dos la-")
EscrevaL("dos. O programa irá analisar se as medidas são possíveis para um")
EscrevaL("triângulo, e indicar a classificação do mesmo.")
EscrevaL()
Escreva("Qual a medida do lado A? ")
leia(A)
Escreva("Qual a medida do lado B? ")
leia(B)
Escreva("Qual a medida do lado C? ")
leia(C)

LimpaTela

EscrevaL("                        --------------------------------")
EscrevaL("                                    RESULTADO")
EscrevaL("                        --------------------------------")
EscrevaL()
EscrevaL("MEDIDAS:")
EscrevaL("LADO A:", A)
EscrevaL("LADO B:", B)
EscrevaL("LADO C:", C)
EscrevaL()

isTriangle <- checkIsTriangle(A,B,C)
typeOfTriangle <- checkTypeOfTriangle(A,B,C)

Se (isTriangle=falso) entao
    EscrevaL("As medidas informadas não formam um triângulo. Para que um triângulo ")
    EscrevaL("seja possível, a soma de dois lados não pode ser menor que o terceiro")
    EscrevaL("lado.")
Senao
    Escreva("O triângulo é: ", typeOfTriangle)
FimSe

EscrevaL()

fimalgoritmo
