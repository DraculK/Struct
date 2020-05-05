#Exercício - 9
def ParImpar(num)
    x=0;
    if (num%2==0)
        x+=1;
    else
        x+=0
    end
end

puts "Digite 5 números: "
    x=0;
for i in 0..4
    n=gets.to_i
    x+=ParImpar(n);
end
puts "#{5-x} são ímpares, #{x}, pares."
