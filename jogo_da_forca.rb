require_relative 'ui'

def pedeUmChuteValido(chutes, erros)
    cabecalhoDeTentativas(chutes, erros)
    loop do
        chute = pedeUmChute  
        if chutes.include? chute
            chuteEfetuado(chute)
        else
            return chute
        end 
    end
end

def joga(nome)
    palavraSecreta = escolhePalavraSecreta

    erros = 0
    chutes = []
    pontosAteAgora = 0
    
    while erros < 5
        chute = pedeUmChuteValido(chutes, erros)
        chutes << chute 

        if chute.size == 1
            totalEncontrado = palavraSecreta.count(chute[0])
            if totalEncontrado == 0
                letraNaoEncontrada
                erros += 1
            else
                letraEncontrada(totalEncontrado)
            end
        else 
            if chute == palavraSecreta
               acertou_a_palavra
               pontosAteAgora += 100
               break
            else
             errou_a_palavra
             pontosAteAgora -=30
             erros += 1
            end
        end  
    end       
      voceGanhou(pontosAteAgora)
end

def jogoDaForca
    nome = daBoasVidas

    loop do
        joga(nome) 
        if naoQuerJogar
            break
        end 
    end 
end