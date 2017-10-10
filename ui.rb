def chuteEfetuado(chute)
    puts "Você ja chutou #{chute}" 
end

def letraNaoEncontrada
    puts "Nao encontrei nada!"
end

def letraEncontrada(totalEncontrado)
    puts "Letra Encontrada #{totalEncontrado} vezes"
end

def acertou_a_palavra
    puts "Parabens! você acertou!"
end

def errou_a_palavra
    puts "Que pena... Errou!"
end

def voceGanhou(pontosAteAgora)
    puts "Você ganhou #{pontosAteAgora} pontos."
end

def escolhendoPalavraSecreta
    puts "Escolhendo uma palavra secreta para você"
end

def palavraEscolhida(palavraSecreta)
    puts "A palavra secreta com #{palavraSecreta.size} letras... Boa Sorte!"
    palavraSecreta.to_s
end

def daBoasVidas
    puts "Bem vindo ao jogo da forca"
    puts "Qual é seu nome? "
    nome = gets.strip
    puts "\n\n\n\n\n"
    puts " começaremos o jogo para você #{nome}"
    nome.to_s
end

def naoQuerJogar
    puts "Deseja Jogar Novamente? (S/N)"
    queroJogar = gets.strip
    naoQueroJogar = queroJogar.upcase == "N"
end

def cabecalhoDeTentativas(chutes, erros, mascara)
    puts "\n\n\n\n\n"
    puts "A palavra Secreta é:  #{mascara}"
    puts "Erros até agora #{erros}"
    puts "Chutes ate Agora #{chutes}"
end

def pedeUmChute
    puts "Entre com seu chute"
    chute = gets.strip.downcase
    puts "Sera se você acertou? você chutou  #{chute}"
    chute.to_s
end