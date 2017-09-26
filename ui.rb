def chuteEfetuado(chute)
    puts "Você ja chutou " + chute.to_s
end

def letraNaoEncontrada
    puts "Nao encontrei nada!"
end

def letraEncontrada(totalEncontrado)
    puts "Letra Encontrada " + totalEncontrado.to_s + " vezes"
end

def acetou_a_palvra
    puts "Parabens! você acertou!"
end

def errou_a_palavra
    puts "Que pena... Errou!"
end

def voceGanhou(pontosAteAgora)
    puts "Você ganhou " + pontosAteAgora.to_s + " pontos."
end

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