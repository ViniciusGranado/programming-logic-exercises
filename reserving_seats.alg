algoritmo "Reserva de lugares"
// Autor : Vinícius Granado
// Data : 04/05/2020

//Descrição: O algorítmo mostra uma fileira de lugares em um cinema,
//           e pede ao usuário que digite o lugar que deseja reservar.
//           O programa mostra se o lugar está disponível, e mostra de
//           forma visual os lugares reservados.
var
//Declaração de variáveis
i, cadeira: inteiro
controle: logico
resposta: caractere
fileira: vetor[0..9] de caractere


procedimento mostrar_fileira():
inicio
para i de 0 ate 9 faca:
     Se (fileira[i] = "") entao
        Escreva("[ B", i+1, " ]")
     Senao
        Escreva("[ --- ]")
     FimSe
FimPara
EscrevaL()
EscrevaL("-----------------------------------------------------------------------")
FimProcedimento


inicio
// Seção de Comandos 
controle <- verdadeiro

Enquanto (controle) faca
    mostrar_fileira()
    
    Escreva("Reservar a cadeira: B")
    leia(cadeira)
    
    
    Se (cadeira < 1) ou (cadeira > 10) entao
       escrevaL("ERRO: Lugar não existe!")
    Senao
       Se (fileira[cadeira-1] = "") entao
          fileira[cadeira-1] <- "X"
          EscrevaL("Cadeira B", cadeira, " RESERVADA!")
       Senao
          EscrevaL("ERRO: Lugar Ocupado!")
       FimSe
    FimSe
    
    Escreva("Quer reservar outro? [S/N] ")
    leia(resposta)
    
    Se (Maiusc(resposta) =  "N") entao
       controle <- Falso
    FimSe
    LimpaTela
FimEnquanto
EscrevaL("Muito obrigado, volte sempre!")







fimalgoritmo
