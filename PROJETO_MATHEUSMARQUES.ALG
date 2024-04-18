Algoritmo "Projeto_MatheusMarques"

Var
    opcao: caractere
    R, A, B, total_A, total_B, rodada, posicao, termo1, termo2, proximo, contador, D, VF, VG: inteiro
    Contrario, vencedor: caractere
    tempo_fugitivo, tempo_guarda: real
Inicio
    repita
        Escreval("Qual programa você deseja executar?", "\n")
        Escreval("1 - Guarda Costeira", "\n")
        Escreval("2 - Bafo", "\n")
        Escreval("3 - Fibonacci", "\n")
        Escreval("0 - sair", "\n")
        Leia(opcao)

Escolha opcao
       Caso "1"
          Escreval("Executando Guarda Costeira...", "\n")
          // Coloque aqui o código para o programa Guarda Costeira
         repita
            Escreval("Digite a distância inicial entre o fugitivo e a Guarda Costeira (D): ")
            Leia(D)
            Escreval("Digite a velocidade da embarcação do fugitivo (VF): ")
            Leia(VF)
            Escreval("Digite a velocidade da embarcação da Guarda Costeira (VG): ")
            Leia(VG)

         // Verifica se VF e VG são diferentes de zero para evitar divisão por zero
            Se (VF = 0) ou (VG = 0) Entao
            Escreval("As velocidades não podem ser zero. Tente novamente.")
         fimSe

         ate VF <> 0 e VG <> 0

         // Calcula o tempo necessário para o fugitivo alcançar o limite de águas internacionais
         tempo_fugitivo <- (D^2 + 144)^0.5 / VF

         // Calcula o tempo necessário para a Guarda Costeira alcançar o limite de águas internacionais
         tempo_guarda <- D / VG

         // Se o tempo da Guarda Costeira for menor ou igual ao tempo do fugitivo, ela o alcançará
         Se tempo_guarda <= tempo_fugitivo entao
            Escreva("S")
         Senao
      Escreva("N")
            Caso "2"
                Escreval("Executando Bafo...", "\n")
                Escreval("Digite a quantidade de rodadas: ")
                Leia(R)

                // Enquanto o número de rodadas for diferente de zero, executa o jogo
                Enquanto R <> 0 faca
                    // Inicializa os totais de figurinhas viradas por Aldo e Beto
                    total_A <- 0
                    total_B <- 0

                    // Loop para calcular o total de figurinhas viradas em cada rodada
                    Para rodada de 1 ate R faca
                        Escreval("Digite o número de figurinhas viradas por Aldo na rodada ", rodada, ": ")
                        Leia(A)
                        Escreval("Digite o número de figurinhas viradas por Beto na rodada ", rodada, ": ")
                        Leia(B)

                        // Atualiza os totais de figurinhas viradas por Aldo e Beto
                        total_A <- total_A + A
                        total_B <- total_B + B
                    FimPara

                    // Determina o vencedor
                    Se total_A > total_B Entao
                        vencedor <- "Aldo"
                    Senao
                        vencedor <- "Beto"
                    FimSe

                    // Imprime o resultado do caso de teste
                    Escreval("Teste ", rodada, ":")
                    Escreval(vencedor)
                    Escreval("")

                    // Leitura do número de rodadas para o próximo caso de teste
                    Escreval("Digite a quantidade de rodadas ", "ou Digite 0 para finalizar:")
                    Leia(R)
                FimEnquanto
            Caso "3"
                Escreval("Executando Fibonacci...", "\n")
                Escreval("Digite a posição da sequência de Fibonacci: ")
                Leia(posicao)

                termo1 <- 1
                termo2 <- 1
                Escreva(termo1, " ", termo2, " ")

                Para contador de 3 ate posicao faca
                    proximo <- termo1 + termo2
                    Escreva(proximo, " ")
                    termo1 <- termo2
                    termo2 <- proximo
                FimPara

                Escreval("\n")

                Escreval("Deseja continuar? (S para sim, N para não): ")
                Leia(Contrario)

                Escolha Contrario
                    Caso "N", "n"
                        Escreval("Saindo do programa...", "\n")
                    Caso Contrario
                        Escreval("Opção inválida. Por favor, escolha uma opção válida.", "\n")
                FimEscolha
        FimEscolha
     ate opcao = "0"
FimAlgoritmo