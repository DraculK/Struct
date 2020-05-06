#Exercício - 10
puts "Digite 10 números: "
numero = gets.split.map &:to_i
i=0
x=0
while(i!=10)
  if(numero[i]>=10 && numero[i]<=20)
    x+=1
  end
  i+=1
end
puts "#{x} estão no intervalo [10,20], #{10-x}, fora"