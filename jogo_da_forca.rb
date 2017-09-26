

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