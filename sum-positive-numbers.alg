algoritmo "Soma dos posit�vo"
// Autor :
// Data : 09/04/2020

//Descri��o: O programa recebe uma certa quantidade
//           (definida pelo usu�rio) de n�meros in-
//           teiros. Identificam-se ent�o os n�meros
//           positivos, e mostra a soma dos mesmos.

var
//Declara��o de vari�veis
totalNumbers, sumPositiveNumbers, number, C: inteiro

inicio
// Se��o de Comandos

//Apresenta��o do programa
EscrevaL("                         *****************************")
EscrevaL("                               SOMA DOS POSITIVOS     ")
EscrevaL("                         *****************************")
EscrevaL()
EscrevaL("Este software ir� realizar a soma dos n�meros positivos inseridos")
EscrevaL("pelo usu�rio. Abaixo, insira a quantidade de n�meros que ser�o ana-:")
EscrevaL("lisados: ")
EscrevaL()

//Total de n�meros � ser analisado
Escreva("Quantos n�meros deseja analisar: ")
leia(totalNumbers)
EscrevaL()

//Inser��o dos n�meros � serem analisados
EscrevaL("Insira agora os n�meros que deseja analisar. O programa ir� identifi-")
EscrevaL("c�-los e somar apenas os positivos: ")
EscrevaL()

//An�lise dos n�meros
Para C de 1 ate totalNumbers faca
    Escreva("Digite o ",C,"� n�mero: ")
    leia(number)
    Se (number>=0) entao //Se for positivo
       sumPositiveNumbers <- sumPositiveNumbers+number //Soma dos n�meros
    FimSe
FimPara

//Resultado Final
EscrevaL()
EscrevaL("                         *****************************")
EscrevaL("                                   RESULTADO          ")
EscrevaL("                         *****************************")
EscrevaL()
EscrevaL("A soma dos n�meros posit�vos digitados �: ",sumPositiveNumbers)

fimalgoritmo
