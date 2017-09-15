def boasVindas
    puts "Bem vindo ao jogo da advinhaçao"
    puts "Qual é seu nome?"
    nome = gets.strip
    puts "\n\n\n\n"
    puts "Começaremos o jogo pra você, " + nome
end

def pedeDificuldade
    puts "Qual o nivel de dificuldade que deseja? (1 Fácil, 5 Difícil)"
    dificuldade = gets.to_i
end

def sorteiaNumeroSecreto(dificuldade)
    case dificuldade
    when 1
        maximo = 30
    when 2
        maximo = 60
    when 3
        maximo = 100
    when 4
        maximo = 150
    else
        maximo = 200
    end

    puts "Escolhendo um numero secreto entre 1 e " + (maximo.to_s) + "..."
    sorteado = rand(maximo ) + 1
    puts "Escolhido... que tal advinhar hoje nosso numero secreto?"
    sorteado
end

def pedeUmNumero(chutes ,tentativa, limiteDeTentativas)
    puts"\n\n\n\n"
    puts "Tentativa " + tentativa.to_s + " de " + limiteDeTentativas.to_s   
    puts "Seus ultimos chutes: " + chutes.to_s
    puts "Entre com o numero"
    chute = gets.strip
    puts "sera que acertou? voce chutou " + chute
    chute.to_i
end

def verificaSeAcertou(chute, numeroSecreto)
     
    if chute == numeroSecreto
      puts "Acertou!"
      return true
    end
            
     if numeroSecreto > chute
        puts "O numero secreto é maior!"

    else 
        puts "O numero secreto é menor!"        
    end
        false 
end

boasVindas

dificuldade = pedeDificuldade

numeroSecreto = sorteiaNumeroSecreto dificuldade

limiteDeTentativas = 5
pontosAteAgora = 1000
chutes = []

for tentativa in 1..limiteDeTentativas

   chute = pedeUmNumero(chutes ,tentativa, limiteDeTentativas)
   chutes << chute
   pontosAperder = (chute - numeroSecreto).abs / 2.0
   pontosAteAgora -= pontosAperder

    if verificaSeAcertou(chute, numeroSecreto)
        break
    end

   
end

puts "Você ganhou " + pontosAteAgora.to_s + " pontos"