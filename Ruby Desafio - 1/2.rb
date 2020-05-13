#desafio - 2
num = gets.to_i
i=0
f=1
x=num
divisores = []
while (x!=0)
    if(num% x==0)
        i=i+1
    end
    x=x-1
end

if(i==2)
    puts "#{num} é primo!"
elsif(num<=0)
    puts "Entrada inválida"
elsif(i!=2)
    print "#{num} não é primo, pois tem #{i} divisores: "
    while (f!=num)
        if(num% f==0)
            i=i+1
            print "#{f}, "
        end
        f=f+1
    end
    print "#{num}\n"
end