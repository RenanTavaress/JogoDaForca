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

def naoQuerJogar
    puts "Deseja Jogar Novamente? (S/N)"
    queroJogar = gets.strip
    naoQueroJogar = queroJogar.upcase == "N"
end

def pedeUmChute(chutes, erros)
    puts "\n\n\n\n\n"
    puts "Erros até agora " + erros.to_s
    puts "Chutes ate Agora " + chutes.to_s
    puts "Entre com seu chute"
    chute = gets.strip
    puts "Sera se você acertou? você chutou " + chute.to_s
    chute.to_s
end

def joga(nome)
    palavraSecreta = escolhePalavraSecreta

    erros = 0
    chutes = []
    pontosAteAgora = 0
    
    while erros < 5
        chute = pedeUmChute(chutes,erros)  
        if chutes.include? chute
            puts "Você ja chutou " + chute.to_s
            next
        end
        chutes << chute 

        if chute.size == 1
            totalEncontrado = palavraSecreta.count(chute[0])
            if totalEncontrado == 0
                puts "Nao encontrei nada!"
                erros += 1
            else
                puts "Letra Encontrada " + totalEncontrado.to_s + " vezes"
            end
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