def boasVidas
    puts "Bem vindo ao jogo da forca"
    puts "Qual é seu nome? "
    nome = gets.strip
    puts " começaremos o jogo para você " + nome.to_s
    nome
end

def escolhePalavraSecreta
    puts "Escolhendo uma palavra secreta para você"
    palavraSecreta.upcase = "programador"
    puts "A palavra secreta com " + palavraSecreta.size.to_s + "letra.. Boa Sorte!"
    palavraSecreta
end