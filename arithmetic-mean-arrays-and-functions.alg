algoritmo "M�dia Aritm�tica"
// Autor : Vin�cius Granado
// Data : 07/04/2020

//------------------------------------------------------------------------------------------+
// Descri��o   : Algoritmo calcula a m�dia aritm�tica dos alunos de uma sala de aula.
//
//               Pergunta o n�mero de alunos na sala, realiza um cadastro dos alunos,
//               calcula a m�dia das notas de cada um e exibe um conceito final.
//
//               O conceito � calculado da seguinte forma:
//
//               - Se a m�dia do aluno for maior igual a 7 , conceito ser� -> "APROVADO".
//               - Sen�o , o conceito ser� -> "REPROVADO".
//
//               PS: Devido � impossibilidade do Portugol em declarar vetores de comprimento
//               indefinido, foi estipulado um limite de 40 alunos, podendo este ser f�cil-
//               mente alterado caso necess�rio.
//------------------------------------------------------------------------------------------+
var
//Declara��o de vari�veis:
numberStudents, C: inteiro

//Vetores
nomes: vetor [0..39] de caractere
notas: vetor [0..39,0..3] de real

procedimento insercaoDados(X: inteiro)

inicio
Para C de 0 ate X-1 faca
   EscrevaL("                 ------------------------------------------------")
   EscrevaL("                 |         INSER��O DE NOTAS NO SISTEMA         |")
   EscrevaL("                 ------------------------------------------------")
   EscrevaL()
   EscrevaL("Insira abaixo o nome e as notas dos alunos: ")
   EscrevaL()
   EscrevaL("Aluno N�",C+1)
   Escreva("Nome do aluno: ")
   leia(nomes[C])
   Escreva("Nota do primeiro semestre: ")
   leia(notas[C,0])
   Escreva("Nota do segundo semestre: ")
   leia(notas[C,1])
   Escreva("Nota do terceiro semestre: ")
   leia(notas[C,2])
   Escreva("Nota do quarto semestre: ")
   leia(notas[C,3])

   Limpatela

FimPara
FimProcedimento

Procedimento calcularMedia(X: inteiro)
var mediaAluno: real

inicio
EscrevaL("                 ------------------------------------------------")
EscrevaL("                 |           M�DIAS E CONCEITOS FINAIS          |")
EscrevaL("                 ------------------------------------------------")
Para C de 0 ate X-1 faca
     mediaAluno <- ( notas[C , 0]+notas[C,1]+notas[C,2]+notas[C,3] ) / 4
     EscrevaL("---------------------------")
     EscrevaL("Nome do aluno: ", nomes[C])
     EscrevaL("M�dia final: ", mediaAluno)
     Se mediaAluno>=7 entao
        EscrevaL("Conceito final: Aprovado")
     Senao
        EscrevaL("Conceito final: Reprovado")
     FimSe

FimPara

FimProcedimento


inicio
// Se��o de Comandos

//Apresenta��o do programa:

EscrevaL("                 ------------------------------------------------")
EscrevaL("                 | CADASTRO DE CONCEITOS FINAIS EM SALA DE AULA |")
EscrevaL("                 ------------------------------------------------")
EscrevaL()
EscrevaL("Este software ir� lhe auxiliar no cadastro das notas e ")
EscrevaL("conceitos finais de seus alunos. Para utiliza-lo, insira")
EscrevaL("abaixo o n�mero de alunos matriculados em sua sala: ")
EscrevaL("PS: Limite de 40 alunos.")
EscrevaL()

//Declara��o de n�mero de alunos pelo usu�rio:
Escreva("Quantos alunos est�o matriculados na sala: ")
leia(numberStudents)
limpaTela

//Declara��o de notas
insercaoDados(numberStudents)

//C�lculo e exibi��o das m�dias e conceitos finais
calcularMedia(numberStudents)

EscrevaL("---------------------------")
EscrevaL("Finalizando...")
fimalgoritmo
