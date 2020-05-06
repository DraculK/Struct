#Exercício - 15
dados=Hash.new()
puts "Digite o nome do aluno: "
dados[:nome] = gets.chomp
puts "Digite a idade do aluno: "
dados[:idade] = gets.chomp
puts "Digite a matrícula do aluno: "
dados[:matricula] = gets.chomp
puts "Digite o email do aluno: "
dados[:email] = gets.chomp
puts dados.each_value {|value| puts value}
