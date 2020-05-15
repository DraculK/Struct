#Desafio - 5
velas = gets.to_i
horas=velas
inicial=velas
nvela=0
while(velas<0)
    puts "Entrada inválida"
    return 0
end
    while(velas!=0)
        if(velas-2<0)
            break
        end
        velas=velas-2
        nvela=nvela+1
        if(nvela==2)
           velas=velas+1
           nvela=0
        end
        horas=horas+1
    end

    if(inicial!=4)
        puts "#{horas} horas"
    elsif
        puts "#{horas+1} horas"
    end
