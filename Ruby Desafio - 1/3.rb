#desafio - 3
def fibo(num)
    return num if num <=1
    fibo(num-1)+fibo(num-2)
  end

num=gets.to_i
if(num<=0)
    puts "Entrada inválida"
elsif
    puts fibo(num)
end