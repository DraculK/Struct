#desafio - 1
def fatorial (num)
    if (num>1)
       return num*fatorial(num - 1)
    else
       return 1
    end
end

num = gets.to_i
resultado = fatorial(num)
if(num<0)
    puts "Entrada inválida"
elsif(num>0 && num<=10)
    print"#{num}! = "
    while (num!=1)
        print "#{num}*"
        num=num-1
    end
    print "1 = #{resultado}"
    puts
elsif
    puts "#{num}! = #{resultado}"
end
