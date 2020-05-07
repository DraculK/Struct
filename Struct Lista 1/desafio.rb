#Desafio - 1
pratos = {"entrada"=>["Bruschetta","Salada","Sopa"], "principal"=>["Bobó de camarão","Lasanha","Almôndega"], "sobremesa"=>["Torta de limão", "Sorvete", "Mousse de maracujá"]}
#print "[#{pratos["entrada"].sample}, #{pratos["principal"].sample}, #{pratos["sobremesa"].sample}]"
#print "\n"
escolha =[]
pratos.each do |key,value|
    if key=="entrada"
        escolha[0] = value.sample
    elsif key=="principal"
        escolha[1] = value.sample
    elsif key=="sobremesa"
        escolha[2] = value.sample
    end
end
print escolha
print "\n"