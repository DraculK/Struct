#Exercício - 17
puts "Digite o valor: "
valor = gets.to_i
n100 = valor/100
valor-=n100*100
n50 = valor/50
valor-=n50*50
n20 = valor/20
valor-=n20*20
n10 = valor/10
valor-=n10*10
n5 = valor/5
valor-=n5*5
n2 = valor/2
valor-=n2*2

puts "#{n100} nota(s) de 100"
puts "#{n50} nota(s) de 50"
puts "#{n20} nota(s) de 20"
puts "#{n10} nota(s) de 10"
puts "#{n5} nota(s) de 5"
puts "#{n2} nota(s) de 2"
puts "Resto: #{valor}" 
