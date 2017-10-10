require_relative 'ui'

def escolhePalavraSecreta
    escolhendoPalavraSecreta
    arquivo = File.read("dicionario.txt")
    todasAsPalavras = arquivo.split "\n"
    numeroEscolhido = rand(todasAsPalavras.size)
    palavraSecreta = todasAsPalavras[numeroEscolhido].downcase
    palavraEscolhida(palavraSecreta)
end 

def palavraMascarada(chutes, palavraSecreta, mascara)
    mascara =""
    for letra in palavraSecreta.chars
        if chutes.include? letra
            mascara << letra
        else
            mascara << "_"
        end
    end
    mascara
end

def pedeUmChuteValido(chutes, erros, mascara)
    cabecalhoDeTentativas(chutes, erros, mascara)
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
        mascara = palavraMascarada(chutes, palavraSecreta, mascara)
        chute = pedeUmChuteValido(chutes, erros, mascara)
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