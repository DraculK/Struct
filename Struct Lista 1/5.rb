#Exercício - 5
puts "Qual a nota do aluno?"
nota = gets.to_f

if (nota<=10 && nota>=9)
    puts "SS"
elsif (nota<=8.9 && nota>=7)
    puts "MS"
elsif (nota<=6.9 && nota>=5)
    puts "MM"
elsif (nota<=4.9 && nota>=3)
    puts "MI"
elsif (nota<=2.9 && nota>=1)
    puts "II"
elsif (nota<1)
    puts "SR"
end