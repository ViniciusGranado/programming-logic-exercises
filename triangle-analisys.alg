algoritmo "An�lise de Tri�ngulos"
// Autor : Vin�cius Granado
// Data : 09/04/2020


//------------------------------------------------------------------------+
// Descri��o   : Algoritmo recebe tr�s valores A , B e C respectivamente.
//
//               Verifica se eles podem ser os comprimentos dos lados de
//               um tri�ngulo.
//
//               Se forem , verifica se comp�em um tri�ngulo EQUIL�TERO ,
//               IS�SCELES ou ESCALENO.
//
//               Exibe em tela se os valores formam ou n�o um tri�ngulo.
//------------------------------------------------------------------------+

var
//Declara��o de vari�veis
A, B, C: real
isTriangle: logico
typeOfTriangle: caractere

//Fun��o "Analisa se o tri�ngulo � poss�vel"
funcao checkIsTriangle(A, B, C: real): logico

inicio
      Se (A+B<=C) ou (A+C<=B) ou (B+C<=A) entao
         retorne falso
      Senao
         retorne verdadeiro
      FimSe
FimFuncao

//Fun��o "Analisa o tipe do tri�ngulo"
funcao checkTypeOfTriangle(A, B, C: real): caractere

inicio
      Se (A=B) e (B=C) entao
         retorne("Equil�tero")
      Senao
          Se ((A=B) e (B<>C)) ou ((A=C) e (C<>B)) ou ((B=C) e (A<>C)) entao
              retorne("Is�sceleces")
          Senao
              Se (A<>B) e (B<>C) entao
                  retorne("Escaleno")
              FimSe
          FimSe
      FimSe
FimFuncao

//Se��o de Comandos
inicio


//Apresenta��o do programa
EscrevaL("                        --------------------------------")
EscrevaL("                        AN�LISE DE LADOS DE UM TRI�NGULO")
EscrevaL("                        --------------------------------")
EscrevaL()
EscrevaL("Este programa ir� analisar os lados de um tri�ngulo informado")
EscrevaL("pelo usu�rio. Para utiliz�-lo, insira abaixo as medidas dos la-")
EscrevaL("dos. O programa ir� analisar se as medidas s�o poss�veis para um")
EscrevaL("tri�ngulo, e indicar a classifica��o do mesmo.")
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
    EscrevaL("As medidas informadas n�o formam um tri�ngulo. Para que um tri�ngulo ")
    EscrevaL("seja poss�vel, a soma de dois lados n�o pode ser menor que o terceiro")
    EscrevaL("lado.")
Senao
    Escreva("O tri�ngulo �: ", typeOfTriangle)
FimSe

EscrevaL()

fimalgoritmo
