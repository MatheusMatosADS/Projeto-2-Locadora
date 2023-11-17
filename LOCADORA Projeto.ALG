algoritmo "Locadora"

funcao cadastrarFilme(listaFilmes: vetor[1..10] de caractere, posicao: inteiro): inteiro

inicio

   escreva("Digite o nome do filme: ")
   leia(listaFilmes[posicao])
   posicao <- posicao + 1
   retorne posicao
fimfuncao
funcao alugarFilme(listaFilmes: vetor[1..10] de caractere, posicao: inteiro)

inicio

   se posicao > 0 entao
      escreva("Filmes disponíveis:")
      para i de 1 ate posicao faca
         escreva(i, ". ", listaFilmes[i])
      fimpara

      escreva("Digite o número do filme que deseja alugar: ")
      leia(numeroFilme)

      se numeroFilme >= 1 e numeroFilme <= posicao entao
         escreva("Você alugou o filme: ", listaFilmes[numeroFilme])
      senao
         escreva("Número de filme inválido.")
      fimse
   senao
      escreva("Nenhum filme disponível para alugar.")
   fimse
fimfuncao
var
   listaDeFilmes: vetor[1..10] de caractere
   quantidadeFilmes: inteiro

funcao cadastrarFilme( listaFilmes: vetor[1..10] de caractere, quantidadeFilmes: inteiro): inteiro
inicio

   para i de 1 ate 10 passo 1 faca


      se quantidadeFilmes < 10 entao
         escreva("Digite o nome do filme: ")
         leia(listaFilmes[quantidadeFilmes + 1])
         quantidadeFilmes <- quantidadeFilmes + 1
      senao
         escreva("Limite de filmes atingido.")
      fimse
      retorne quantidadeFilmes ]
fimfuncao

procedimento alugarFilme( listaFilmes: vetor[1..10] de caractere, quantidadeFilmes: inteiro)

inicio

   se quantidadeFilmes > 0 entao
      escreva("Filmes disponíveis:")
      para i de 1 ate quantidadeFilmes faca
         escreva(i, ". ", listaFilmes[i])
      fimpara

      escreva("Digite o número do filme que deseja alugar: ")
      leia(numeroFilme)

      se numeroFilme >= 1 e numeroFilme <= quantidadeFilmes entao
         escreva("Você alugou o filme: ", listaFilmes[numeroFilme])
      senao
         escreva("Número de filme inválido.")
      fimse
   senao
      escreva("Nenhum filme disponível para alugar.")
   fimse
fimse
fimprocedimento

algoritmo principal

var
   listaFilmes: vetor[1..10] de caractere
   posicaoFilmes: inteiro
   opcao: caractere

   posicaoFilmes <- 1
inicio
   para i de 1 ate 10 passo 1 faca
      escreva("Digite o valor a posição",1,":")
      leia([i]
   fimpara
   escreva("Valores no vetor")
   para i de 1 ate 10 passo 1 faca
      escreva(meuVetor[i])
   fimpara
inicio

   repita
      escreva("Menu:")
      escreva("1. Cadastrar Filme")
      escreva("2. Alugar Filme")
      escreva("3. Sair")
      escreva("Escolha uma opção: ")
      leia(opcao)

      escolha opcao
      caso "1"
         posicaoFilmes <- cadastrarFilme(listaFilmes, posicaoFilmes)
      caso "2"
         alugarFilme(listaFilmes, posicaoFilmes)
      caso "3"
         escreva("Saindo do programa.")
      caso contrario
         escreva("Opção inválida.")
      fimescolha
   ate opcao = "3"