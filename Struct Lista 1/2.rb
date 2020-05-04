#Exercício - 2
puts "Escreva algo:"
string=gets;
verificar=string.ascii_only?
if verificar
    puts "Contém somente caracteres ASCII"
else
    puts "Contém caracteres não ASCII"
end