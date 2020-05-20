#Exercício - 3
class Pessoa
    def initialize(nome,cpf,telefone,idade)
        @nome = nome
        @cpf = cpf
        @telefone = telefone
        @idade = idade
    end

    attr_reader :nome, :cpf, :telefone, :idade
end

class ContaP < Pessoa
    @@poupanca = []
    def initialize(nome,cpf,telefone,idade,saldo,numero,senha)
        super(nome,cpf,telefone,idade)
        @saldo = saldo
        @numero = numero
        @senha = senha
        @@poupanca << self
    end

    attr_reader :saldo, :numero, :senha

    def Depositar(num)
        @saldo = @saldo+num
        puts "Você conseguiu depositar: #{num}"
        puts "Sua conta agora tem: #{@saldo}"
    end
    def Sacar(num)
        if(num>@saldo)
            num=@saldo
        end
        @saldo = @saldo-num
        puts "Você conseguiu sacar: #{num}"
        puts "Sua conta agora tem: #{@saldo}" 
    end
    def self.poupanca
        @@poupanca
    end
end

class ContaC < Pessoa
    @@corrente = []
    def initialize(nome,cpf,telefone,idade,saldo,numero,senha)
        super(nome,cpf,telefone,idade)
        @saldo = saldo
        @numero = numero
        @senha = senha
        @@corrente << self
    end

    attr_reader :saldo, :numero, :senha

    def Depositar(num)
        @saldo = @saldo+num
        puts "Você conseguiu depositar: #{num}"
        puts "Sua conta agora tem: #{@saldo}"
    end
    def Sacar(num)
        @saldo = @saldo-num
        puts "Você conseguiu sacar: #{num}"
        puts "Sua conta agora tem: #{@saldo}" 
    end
    def self.corrente
        @@corrente
    end
end

contaEx = ContaP.new("Ramón Valdés", "000.000.000-00", "4002-8922", 65, 100000, "1234 013 12345678-9", "4321")
# contaEx1 = ContaC.new("Ramón Valdés", "000.000.000-00", "4002-8922", 65, 100000, "1234 013 12345678-9", "4321")
# puts contaEx.nome
# puts contaEx.cpf
# puts contaEx.telefone
# puts contaEx.idade
# puts contaEx.saldo
# puts contaEx.numero
# puts contaEx.senha

puts "1. Listar contas correntes."
puts "2. Listas contas poupanças."
puts "3. Criar conta corrente"
puts "4. Criar conta poupança"
puts "5. Acessar conta"
puts "6. Sair"
option = gets.to_i
while(option<1 || option>6)
    puts "-------------------"
    puts "Entrada inválida"
    puts "1. Listar contas correntes."
    puts "2. Listas contas poupanças."
    puts "3. Criar conta corrente"
    puts "4. Criar conta poupança"
    puts "5. Acessar conta"
    puts "6. Sair"
    option = gets.to_i
end

while(option!=6)
    if(option==1)
        print ContaC.corrente.map {|corrente| [corrente.nome,corrente.cpf,corrente.telefone,corrente.idade,corrente.saldo,corrente.numero,corrente.senha]}
        puts "-------------------"
        puts "1. Listar contas correntes."
        puts "2. Listas contas poupanças."
        puts "3. Criar conta corrente"
        puts "4. Criar conta poupança"
        puts "5. Acessar conta"
        puts "6. Sair"
        option = gets.to_i
        while(option<1 || option>6)
            puts "-------------------"
            puts "Entrada inválida"
            puts "1. Listar contas correntes."
            puts "2. Listas contas poupanças."
            puts "3. Criar conta corrente"
            puts "4. Criar conta poupança"
            puts "5. Acessar conta"
            puts "6. Sair"
            option = gets.to_i
        end
    elsif(option==2)
        print ContaP.poupanca.map {|poupanca| [poupanca.nome,poupanca.cpf,poupanca.telefone,poupanca.idade,poupanca.saldo,poupanca.numero,poupanca.senha]}
        puts "-------------------"
        puts "1. Listar contas correntes."
        puts "2. Listas contas poupanças."
        puts "3. Criar conta corrente"
        puts "4. Criar conta poupança"
        puts "5. Acessar conta"
        puts "6. Sair"
        option = gets.to_i
        while(option<1 || option>6)
            puts "-------------------"
            puts "Entrada inválida"
            puts "1. Listar contas correntes."
            puts "2. Listas contas poupanças."
            puts "3. Criar conta corrente"
            puts "4. Criar conta poupança"
            puts "5. Acessar conta"
            puts "6. Sair"
            option = gets.to_i
        end
    end
end