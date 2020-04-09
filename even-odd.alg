algoritmo "Par ou ímpar"
// Autor : Vinícius Granado
// Data : 09/04/2020

//Descrição: O usuário insere um número inteiro.
//           O programa verifica se o número é
//           par ou ímpar. Ao final, imprime na
//           tela o resultado.

var
//Declaração de variáveis
number: inteiro

inicio
//Seção de comandos

//Apresentação do programa
EscrevaL("                          -----------------------------")
EscrevaL("                                   PAR OU ÍMPAR        ")
EscrevaL("                          -----------------------------")
EscrevaL()
EscrevaL("Esse programa irá analisar um número inserido pelo usuário, e verificar")
EscrevaL("se o mesmo é par ou ímpar. Para utilizá-lo, apenas insira um número")
EscrevaL("inteiro abaixo.")
EscrevaL()

//Inserção do número pelo usuário
Escreva("Digite um número inteiro: ")
leia(number)
EscrevaL()

//Verificação Par/Ímpar e resultado
Se(number%2=0) entao
    EscrevaL("O número", number," é Par.")
Senao
    EscrevaL("O número", number," é Ímpar.")
FimSe

fimalgoritmo
