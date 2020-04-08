algoritmo "Média Aritmética"
// Autor : Vinícius Granado
// Data : 07/04/2020
// Seção de Declarações

//------------------------------------------------------------------------------------------+
// Descrição   : Algoritmo calcula a média aritmética dos alunos de uma sala de aula.
//
//               Pergunta o número de alunos na sala, realiza um cadastro dos alunos,
//               calcula a média das notas de cada um e exibe um conceito final.
//
//               O conceito é calculado da seguinte forma:
//
//               - Se a média do aluno for maior igual a 7 , conceito será -> "APROVADO".
//               - Senão , o conceito será -> "REPROVADO".
//
//               PS: Devido à impossibilidade do Portugol em declarar vetores de comprimento
//               indefinido, foi estipulado um limite de 40 alunos, podendo este ser fácil-
//               mente alterado caso necessário.
//------------------------------------------------------------------------------------------+
var
//Declaração de variáveis:
numberStudents, C: inteiro

//Vetores
nomes: vetor [0..39] de caractere
notas: vetor [0..39,0..3] de real

procedimento insercaoDados(X: inteiro)

inicio
Para C de 0 ate X-1 faca
   EscrevaL("                 ------------------------------------------------")
   EscrevaL("                 |         INSERÇÃO DE NOTAS NO SISTEMA         |")
   EscrevaL("                 ------------------------------------------------")
   EscrevaL()
   EscrevaL("Insira abaixo o nome e as notas dos alunos: ")
   EscrevaL()
   EscrevaL("Aluno N°",C+1)
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
EscrevaL("                 |           MÉDIAS E CONCEITOS FINAIS          |")
EscrevaL("                 ------------------------------------------------")
Para C de 0 ate X-1 faca
     mediaAluno <- ( notas[C , 0]+notas[C,1]+notas[C,2]+notas[C,3] ) / 4
     EscrevaL("---------------------------")
     EscrevaL("Nome do aluno: ", nomes[C])
     EscrevaL("Média final: ", mediaAluno)
     Se mediaAluno>=7 entao
        EscrevaL("Conceito final: Aprovado")
     Senao
        EscrevaL("Conceito final: Reprovado")
     FimSe

FimPara

FimProcedimento


inicio
// Seção de Comandos

//Apresentação do programa:

EscrevaL("                 ------------------------------------------------")
EscrevaL("                 | CADASTRO DE CONCEITOS FINAIS EM SALA DE AULA |")
EscrevaL("                 ------------------------------------------------")
EscrevaL()
EscrevaL("Este software irá lhe auxiliar no cadastro das notas e ")
EscrevaL("conceitos finais de seus alunos. Para utiliza-lo, insira")
EscrevaL("abaixo o número de alunos matriculados em sua sala: ")
EscrevaL("PS: Limite de 40 alunos.")
EscrevaL()

//Declaração de número de alunos pelo usuário:
Escreva("Quantos alunos estão matriculados na sala: ")
leia(numberStudents)
limpaTela

//Declaração de notas
insercaoDados(numberStudents)

//Cálculo e exibição das médias e conceitos finais
calcularMedia(numberStudents)

EscrevaL("---------------------------")
EscrevaL("Finalizando...")
fimalgoritmo
