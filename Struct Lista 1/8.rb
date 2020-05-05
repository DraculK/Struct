#Exercício - 8
def ParImpar(num)
    if (num%2==0)
        puts "#{num} é par."
    else
        puts "#{num} é ímpar."
    end
end

puts "Digite um número: "
n=gets.to_i
ParImpar(n)