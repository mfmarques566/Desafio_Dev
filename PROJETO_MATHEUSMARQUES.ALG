Algoritmo "Projeto_MatheusMarques"

Var
    opcao: caractere
    R, A, B, total_A, total_B, rodada, posicao, termo1, termo2, proximo, contador, D, VF, VG: inteiro
    Contrario, vencedor: caractere
    tempo_fugitivo, tempo_guarda: real
Inicio
    repita
        Escreval("Qual programa voc� deseja executar?", "\n")
        Escreval("1 - Guarda Costeira", "\n")
        Escreval("2 - Bafo", "\n")
        Escreval("3 - Fibonacci", "\n")
        Escreval("0 - sair", "\n")
        Leia(opcao)

Escolha opcao
       Caso "1"
          Escreval("Executando Guarda Costeira...", "\n")
          // Coloque aqui o c�digo para o programa Guarda Costeira
         repita
            Escreval("Digite a dist�ncia inicial entre o fugitivo e a Guarda Costeira (D): ")
            Leia(D)
            Escreval("Digite a velocidade da embarca��o do fugitivo (VF): ")
            Leia(VF)
            Escreval("Digite a velocidade da embarca��o da Guarda Costeira (VG): ")
            Leia(VG)

         // Verifica se VF e VG s�o diferentes de zero para evitar divis�o por zero
            Se (VF = 0) ou (VG = 0) Entao
            Escreval("As velocidades n�o podem ser zero. Tente novamente.")
         fimSe

         ate VF <> 0 e VG <> 0

         // Calcula o tempo necess�rio para o fugitivo alcan�ar o limite de �guas internacionais
         tempo_fugitivo <- (D^2 + 144)^0.5 / VF

         // Calcula o tempo necess�rio para a Guarda Costeira alcan�ar o limite de �guas internacionais
         tempo_guarda <- D / VG

         // Se o tempo da Guarda Costeira for menor ou igual ao tempo do fugitivo, ela o alcan�ar�
         Se tempo_guarda <= tempo_fugitivo entao
            Escreva("S")
         Senao
      Escreva("N")
            Caso "2"
                Escreval("Executando Bafo...", "\n")
                Escreval("Digite a quantidade de rodadas: ")
                Leia(R)

                // Enquanto o n�mero de rodadas for diferente de zero, executa o jogo
                Enquanto R <> 0 faca
                    // Inicializa os totais de figurinhas viradas por Aldo e Beto
                    total_A <- 0
                    total_B <- 0

                    // Loop para calcular o total de figurinhas viradas em cada rodada
                    Para rodada de 1 ate R faca
                        Escreval("Digite o n�mero de figurinhas viradas por Aldo na rodada ", rodada, ": ")
                        Leia(A)
                        Escreval("Digite o n�mero de figurinhas viradas por Beto na rodada ", rodada, ": ")
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

                    // Leitura do n�mero de rodadas para o pr�ximo caso de teste
                    Escreval("Digite a quantidade de rodadas ", "ou Digite 0 para finalizar:")
                    Leia(R)
                FimEnquanto
            Caso "3"
                Escreval("Executando Fibonacci...", "\n")
                Escreval("Digite a posi��o da sequ�ncia de Fibonacci: ")
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

                Escreval("Deseja continuar? (S para sim, N para n�o): ")
                Leia(Contrario)

                Escolha Contrario
                    Caso "N", "n"
                        Escreval("Saindo do programa...", "\n")
                    Caso Contrario
                        Escreval("Op��o inv�lida. Por favor, escolha uma op��o v�lida.", "\n")
                FimEscolha
        FimEscolha
     ate opcao = "0"
FimAlgoritmo