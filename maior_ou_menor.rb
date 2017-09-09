def boasVindas
    puts "Bem vindo ao jogo da advinhaçao"

    puts "Qual é seu nome?"

    nome = gets

    puts "\n\n\n\n"

    puts "Começaremos o jogo pra você, " + nome
end

def sorteiaNumeroSecreto
    puts "Escolhendo um numero secreto entre 0 a 200..."
    sorteado = 175
    puts "Escolhido... que tal advinhar hoje nosso numero secreto?"
    sorteado
end

def pedeUmNumero(chutes ,tentativa, limiteDeTentativas)
    puts"\n\n\n\n"
    puts "Tentativa " + tentativa.to_s + " de " + limiteDeTentativas.to_s   
    puts "Seus ultimos chutes: " + chutes.to_s
    chute = gets 
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

numeroSecreto = sorteiaNumeroSecreto


limiteDeTentativas = 5
chutes = []
totalDeChutes = 0

for tentativa in 1..limiteDeTentativas

   chute = pedeUmNumero(chutes ,tentativa, limiteDeTentativas)
   chutes[totalDeChutes] = chute
   totalDeChutes = totalDeChutes + 1

    if verificaSeAcertou(chute, numeroSecreto)
        break
    end

   
end