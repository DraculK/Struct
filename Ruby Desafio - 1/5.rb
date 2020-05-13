#Desafio - 5
velas = gets.to_i
horas=velas
if(velas<=0)
    puts "Entrada inválida"
    return 0
end
    while(velas!=0)
        if(velas-2<0)
            break
        end
        velas=velas-2
        horas=horas+1
    end
    puts "#{horas} horas"
