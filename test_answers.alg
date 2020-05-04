algoritmo "Gabarito da prova"
// Autor : Vinícius Granado
// Data : 04/05/2020

// Descrição: O programa registra o gabarito de uma prova,
//            e depois as respostas dadas por três alunos.
//            Mostra a nota de cada aluno e a média final
//            da sala.

var
//Declaração de variáveis
i: inteiro
gabarito: vetor[0..4] de caractere
nomes: vetor[0..2] de caractere
notas: vetor[0..2] de inteiro


//Procedimento registra as notas do gabarito.
procedimento registrar_gabarito():
inicio
EscrevaL("PASSO 1 - Cadastro de Gabarito")
EscrevaL("------------------------------")

para i de 0 ate 4 faca
     Escreva("Questão ", i+1, ": ")
     leia(gabarito[i])
FimPara
FimProcedimento


//Função registra as notas individuais de cada aluno
funcao registrar_notas(i: inteiro):inteiro
var soma, i2: inteiro
prova: vetor[0..4] de caractere
inicio

   EscrevaL("-------------------------")
   EscrevaL("ALUNO ", i+1)
   EscrevaL("-------------------------")
   EscrevaL()
   Escreva("Nome: ")
   leia(nomes[i])
   
   EscrevaL("RESPOSTAS DADAS")
   para i2 de 0 ate 4 faca
        Escreva("Questao ", i2+1, ": ")
        leia(prova[i2])
        
        Se Maiusc(prova[i2]) = Maiusc(gabarito[i2]) entao
           soma <- soma + 2
        FimSe
   FimPara
   retorne (soma)
   LimpaTela
FimFuncao


//Procedimento mostra o resultado final na tela
procedimento mostrar_resultado():
var media: real
inicio
      EscrevaL("NOTAS FINAIS")
      EscrevaL("---------------------------")
      
      Para i de 0 ate 2 faca:
           EscrevaL(nomes[i]:23, notas[i]:4:1)
      FimPara
      EscrevaL("---------------------------")
      
      media <- ((notas[0]+notas[1]+notas[2])/3)
      Escreva("Média da Turma: ",media:4:1)
FimProcedimento


inicio
// Seção de Comandos 

registrar_gabarito()

LimpaTela

para i de 0 ate 2 faca
     notas[i] <- registrar_notas(i)
FimPara

mostrar_resultado()
EscrevaL()

fimalgoritmo

