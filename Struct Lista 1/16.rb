#Exercício - 16
fita1=["A","C","G","T","A","C","G","T","A","C","G","T"]
recebefita = Array.new
recebefita=fita1.sample(10)
puts "Primeira fita: "
print recebefita
print "\n"
puts "DNA: "
for i in 0..10
    if(recebefita[i]=="A")
        puts "[A,T]"
    elsif(recebefita[i]=="C")
        puts "[C,G]"
    elsif(recebefita[i]=="G")
        puts "[G,C]"
    elsif(recebefita[i]=="T")  
        puts "[T,A]"
    end
end