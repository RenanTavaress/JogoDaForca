def boasVidas
    puts "Bem vindo ao jogo da forca"
    puts "Qual é seu nome? "
    nome = gets.strip
    puts "\n\n\n\n\n"
    puts " começaremos o jogo para você " + nome.to_s
    nome
end

def escolhePalavraSecreta
    puts "Escolhendo uma palavra secreta para você"
    palavraSecreta = "programador"
    puts "A palavra secreta com " + palavraSecreta.size.to_s + " letra... Boa Sorte!"
    palavraSecreta
end

def querJogar?
    puts "Deseja Jogar Novamente? (S/N)"
    queroJogar = gets.strip
    querJogar = queroJogar.upcase == "S"
end

def pedeUmChute(erros, chutes)
    puts "\n\n\n\n\n"
    puts "Erros até agora " + erros.to_s
    puts "Chutes ate Agora " + chutes.to_s
    puts "Entre com seu chute"
    chute = gets.strip
    puts "Sera se você acertou? você chutou " + chute.to_s
end



