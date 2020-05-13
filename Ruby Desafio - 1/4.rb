#Desafio - 4
n1, n2, n3 = gets.split.map &:to_i
if (n1<=0 || n2<=0 || n3<=0)
    puts "Entrada inválida"
elsif (n1+n2<n3 || n1+n3<n2 || n2+n3<n1)
    puts "Não forma triângulo"
elsif ((n1==n2 && n1!=n3) || (n1==n3 && n1!=n2) || (n2==n3 && n2!=n1)) 
    puts "Forma triângulo isósceles"
elsif (n1==n2 && n2==n3)
    puts "Forma triângulo equilátero"
elsif ((n1!=n2 && n1!=n3) && n3!=n2)
    puts "Forma triângulo escaleno"
end