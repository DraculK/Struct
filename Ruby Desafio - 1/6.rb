#Desafio - 6
valor=gets.to_f
rendimento=gets.to_f
conta=gets.to_i
prazo=gets.to_i
prazo1=prazo
inicial=valor
if(valor==0 || rendimento==0 || conta==0 || prazo==0)
    puts "Entrada inválida"
elsif
    while(prazo!=0)
        if(valor-inicial>=conta)
            break
        end
        conta+=conta*0.01
        valor+=valor*rendimento
        prazo=prazo-1
    end
end
puts "Wallif pagou a conta em #{prazo1-prazo} meses"