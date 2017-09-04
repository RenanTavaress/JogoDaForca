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

def pedeUmNumero(tentativa, tentativaNumeroSecreto)
    puts"\n\n\n\n"
    puts "Tentativa " + tentativa.to_s + " de " + tentativaNumeroSecreto.to_s   
    chute = gets 
    puts "sera que acertou? voce chutou " + chute
    chute.to_i
end

def verificaSeAcertou(chute, numeroSecreto)
     
    # Condicional
     if chute == numeroSecreto
        puts "Acertou!"
        return true
    else 
        
        if numeroSecreto > chute
            puts "O numero secreto é maior!"
            return false

        else 
            puts "O numero secreto é menor!"   
            return false 
        end

    end    
end

boasVindas

numeroSecreto = sorteiaNumeroSecreto


tentativaNumeroSecreto = 5

for tentativa in 1..tentativaNumeroSecreto

   chute = pedeUmNumero(tentativa, tentativaNumeroSecreto)

    if verificaSeAcertou(chute, numeroSecreto)
        break
    end

   
end