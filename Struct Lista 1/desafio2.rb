#Desafio - 2
pratos = {"entrada"=>{"Bruschetta"=>2.5,"Salada"=>3,"Sopa"=>5}, "principal"=>{"Bobó de camarão"=>30,"Lasanha"=>15,"Almôndega"=>24}, "sobremesa"=>{"Torta de limão"=>12, "Sorvete"=>6, "Mousse de maracujá"=>20}}
escolha = []
final = []
total=0
pratos.each do |key,value|
    if key=="entrada"
        escolha[0] = value.to_a.sample()
    elsif key=="principal"
        escolha[1] = value.to_a.sample()
    elsif key=="sobremesa"
        escolha[2] = value.to_a.sample()
    end  
end

if(escolha[0]==["Bruschetta", 2.5])
    total+=2.5
    final[0]="Bruschetta"
elsif(escolha[0]==["Salada", 3])
    total+=3
    final[0]="Salada"
elsif(escolha[0]==["Sopa", 5])
    total+=5
    final[0]="Sopa"
end

if(escolha[1]==["Bobó de camarão", 30])
    total+=30
    final[1]="Bobó de camarão"
elsif(escolha[1]==["Lasanha", 15])
    total+=15
    final[1]="Lasanha"
elsif(escolha[1]==["Almôndega", 24])
    total+=24
    final[1]="Almôndega"
end

if(escolha[2]==["Torta de limão", 12])
    total+=12
    final[2]="Torta de limão"
elsif(escolha[2]==["Sorvete", 6])
    total+=6
    final[2]="Sorvete"
elsif(escolha[2]==["Mousse de maracujá", 20])
    total+=20
    final[2]="Mousse de maracujá"
end
x='%.2f' % total
print final
print "\n"
puts "Total: R$#{x}"

