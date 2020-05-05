#Exercício - 7
puts "Digite um número entre 1 e 10:"
numero=gets.to_i
while (numero>10 || numero<1) 
    puts "Digite um número entre 1 e 10:"
    numero=gets.to_i
end
puts "#{numero*1}, #{numero*2}, #{numero*3}, #{numero*4}, #{numero*5}, #{numero*6}, #{numero*7}, #{numero*8}, #{numero*9}, #{numero*10}."