algoritmo "Soma dos positívo"
// Autor :
// Data : 09/04/2020

//Descrição: O programa recebe uma certa quantidade
//           (definida pelo usuário) de números in-
//           teiros. Identificam-se então os números
//           positivos, e mostra a soma dos mesmos.

var
//Declaração de variáveis
totalNumbers, sumPositiveNumbers, number, C: inteiro

inicio
// Seção de Comandos

//Apresentação do programa
EscrevaL("                         *****************************")
EscrevaL("                               SOMA DOS POSITIVOS     ")
EscrevaL("                         *****************************")
EscrevaL()
EscrevaL("Este software irá realizar a soma dos números positivos inseridos")
EscrevaL("pelo usuário. Abaixo, insira a quantidade de números que serão ana-:")
EscrevaL("lisados: ")
EscrevaL()

//Total de números à ser analisado
Escreva("Quantos números deseja analisar: ")
leia(totalNumbers)
EscrevaL()

//Inserção dos números à serem analisados
EscrevaL("Insira agora os números que deseja analisar. O programa irá identifi-")
EscrevaL("cá-los e somar apenas os positivos: ")
EscrevaL()

//Análise dos números
Para C de 1 ate totalNumbers faca
    Escreva("Digite o ",C,"º número: ")
    leia(number)
    Se (number>=0) entao //Se for positivo
       sumPositiveNumbers <- sumPositiveNumbers+number //Soma dos números
    FimSe
FimPara

//Resultado Final
EscrevaL()
EscrevaL("                         *****************************")
EscrevaL("                                   RESULTADO          ")
EscrevaL("                         *****************************")
EscrevaL()
EscrevaL("A soma dos números positívos digitados é: ",sumPositiveNumbers)

fimalgoritmo
