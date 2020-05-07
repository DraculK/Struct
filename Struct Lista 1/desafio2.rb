#Desafio - 2
pratos = {"entrada"=>["Bruschetta"=>2.5,"Salada"=>3,"Sopa"=>5], "principal"=>["Bobó de camarão"=>30,"Lasanha"=>15,"Almôndega"=>24], "sobremesa"=>["Torta de limão"=>12, "Sorvete"=>6, "Mousse de maracujá"=>20]}
escolha = []
total=0
pratos.each do |key,value|
    if key=="entrada"
        if value==value[0]["Bruschetta"]
                total=value[0]["Bruschetta"]
        elsif value==value[0]["Salada"]
                total=value[0]["Salada"]
        elsif value==value[0]["Sopa"]
                total=value[0]["Sopa"]
        end
    end
end

puts total

