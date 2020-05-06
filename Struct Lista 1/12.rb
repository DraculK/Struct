#Exercício - 12
def bissexto(num)
    if((num%4==0) && (num%100!=0))
        return 1
    elsif(num%400==0)
        return 1
    elsif(num%4!=0)
        #eturn 0
    end
end

anos = (1901..2000).to_a
leapyear=[]
i=0
anos.each do |anos|
    if(bissexto(anos)==1)
        leapyear[i]=anos
        #puts leapyear[i]
        i+=1
    end
end

leapyear.each do |leapyear|
    print "#{leapyear} "
end
print "\n"




