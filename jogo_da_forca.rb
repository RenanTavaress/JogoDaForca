def daBoasVidas
    puts "Bem vindo ao jogo da forca"
    puts "Qual é seu nome? "
    nome = gets.strip
    puts "\n\n\n\n\n"
    puts " começaremos o jogo para você " + nome.to_s
    nome.to_s
end

def escolhePalavraSecreta
    puts "Escolhendo uma palavra secreta para você"
    palavraSecreta = "programador"
    puts "A palavra secreta com " + palavraSecreta.size.to_s + " letra... Boa Sorte!"
    palavraSecreta.to_s
end

def naoQuerJogar?
    puts "Deseja Jogar Novamente? (S/N)"
    queroJogar = gets.strip
    naoQueroJogar = queroJogar.upcase == "N"
end

def pedeUmChute(erros, chutes)
    puts "\n\n\n\n\n"
    puts "Erros até agora " + erros.to_s
    puts "Chutes ate Agora " + chutes.to_s
    puts "Entre com seu chute"
    chute.upcase = gets.strip
    puts "Sera se você acertou? você chutou " + chute.to_s
    chute.to_s
end
def joga(nome)
    palavraSecreta = sorteiaPalavraSecreta

    erros = 0
    chutes = []
    pontosAteAgora = 0
    totalEncontrado = 0

    while erros < 5
        chute = pedeUmChute(erros,chutes)
        chutes << chute

        for i 0..in (palavraSecreta.size -1)
            letra = palavraSecreta[i]
            if chute == letra
                puts "Você Acertou!"
                totalEncontrado += 1
            end
            if totalEncontrado == 0
                puts "Nao encontrei nada!"
                erro += 1
            else
                puts "Letra Encontrada " + totalEncontrado.to_s + "vezes"
            end
    
            acertou = chute.size == 1
        if acertou
        else
            if chute == palavraSecreta
                puts "Parabens! você acertou!"
                pontosAteAgora += 100
                break
            else
                puts "Que pena... Errou!"
                pontosAteAgora -=30
                erros += 1
            end
        end
    end

    

    puts "Você ganhou " + pontosAteAgora.to_s + " pontos."
end

nome = daBoasVidas

loop do
    joga(nome) 
    if naoQuerJogar
        break
    end
end