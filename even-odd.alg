algoritmo "Par ou �mpar"
// Autor : Vin�cius Granado
// Data : 09/04/2020

//Descri��o: O usu�rio insere um n�mero inteiro.
//           O programa verifica se o n�mero �
//           par ou �mpar. Ao final, imprime na
//           tela o resultado.

var
//Declara��o de vari�veis
number: inteiro

inicio
//Se��o de comandos

//Apresenta��o do programa
EscrevaL("                          -----------------------------")
EscrevaL("                                   PAR OU �MPAR        ")
EscrevaL("                          -----------------------------")
EscrevaL()
EscrevaL("Esse programa ir� analisar um n�mero inserido pelo usu�rio, e verificar")
EscrevaL("se o mesmo � par ou �mpar. Para utiliz�-lo, apenas insira um n�mero")
EscrevaL("inteiro abaixo.")
EscrevaL()

//Inser��o do n�mero pelo usu�rio
Escreva("Digite um n�mero inteiro: ")
leia(number)
EscrevaL()

//Verifica��o Par/�mpar e resultado
Se(number%2=0) entao
    EscrevaL("O n�mero", number," � Par.")
Senao
    EscrevaL("O n�mero", number," � �mpar.")
FimSe

fimalgoritmo
