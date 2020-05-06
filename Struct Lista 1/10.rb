#Exercício - 10
#Por ora, esse foi o único jeito que consegui pensar para fazer esse exercício
puts "Digite 10 números: "
x=0
n1, n2, n3, n4, n5, n6, n7, n8, n9, n10 = gets.split.map(&:to_i)
if(n1>=10 && n1<=20)
    x+=1
end
if(n2>=10 && n2<=20)
    x+=1
end
if(n3>=10 && n3<=20)
    x+=1
end
if(n4>=10 && n4<=20)
    x+=1
end
if(n5>=10 && n5<=20)
    x+=1
end
if(n6>=10 && n6<=20)
    x+=1
end
if(n7>=10 && n7<=20)
    x+=1
end
if(n8>=10 && n8<=20)
    x+=1
end
if(n9>=10 && n9<=20)
    x+=1
end
if(n10>=10 && n10<=20)
    x+=1
end
puts "#{x} estão no intervalo [10,20], #{10-x}, fora"