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
i=0
nomecorrente = []
cpfcorrente = []
telefonecorrente = []
idadecorrente = []
saldocorrente = []
numerocorrente = []
senhacorrente = []
f=1
nomepoupanca = []
cpfpoupanca = []
telefonepoupanca = []
idadepoupanca = []
saldopoupanca = []
numeropoupanca = []
senhapoupanca = []
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
    elsif(option==3)
        puts "CRIAÇÃO DE CONTA CORRENTE"
        puts "Digite o seu nome: "
        nomecorrente[i]=gets.to_s
        puts "Digite o seu cpf: "
        cpfcorrente[i]=gets.to_s
        puts "Digite o seu telefone: "
        telefonecorrente[i]=gets.to_s
        puts "Digite a sua idade: "
        idadecorrente[i]=gets.to_i
        puts "Digite o valor que será colocado na conta: "
        saldocorrente[i]=gets.to_i
        puts "Digite o número da sua conta: "
        numerocorrente[i]=gets.to_s
        puts "Digite uma senha para a conta: "
        senhacorrente[i]=gets.to_i
        ContaC.new(nomecorrente[i],cpfcorrente[i],telefonecorrente[i],idadecorrente[i],saldocorrente[i],numerocorrente[i],senhacorrente[i])
        i+=1
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
    elsif(option==4)
        puts "CRIAÇÃO DE CONTA POUPANÇA"
        puts "Digite o seu nome: "
        nomepoupanca[f]=gets.to_s
        puts "Digite o seu cpf: "
        cpfpoupanca[f]=gets.to_s
        puts "Digite o seu telefone: "
        telefonepoupanca[f]=gets.to_s
        puts "Digite a sua idade: "
        idadepoupanca[f]=gets.to_i
        puts "Digite o valor que será colocado na conta: "
        saldopoupanca[f]=gets.to_i
        puts "Digite o número da sua conta: "
        numeropoupanca[f]=gets.to_s
        puts "Digite uma senha para a conta: "
        senhapoupanca[f]=gets.to_i
        ContaP.new(nomepoupanca[f],cpfpoupanca[f],telefonepoupanca[f],idadepoupanca[f],saldopoupanca[f],numeropoupanca[f],senhapoupanca[f])
        f+=1
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
    elsif(option==5)
        puts "Você quer acessar que tipo de conta? "
        puts "1. Corrente."
        puts "2. Poupança."
        tipo=gets.to_i
        while(tipo<1 || tipo>2)
            puts "Operação inválida"
            puts "Você quer acessar que tipo de conta? "
            puts "1. Corrente."
            puts "2. Poupança."
            tipo=gets.to_i
        end
        if(tipo==1)
            puts "Escolha a conta: "
            print ContaC.corrente.map {|corrente| [corrente.nome,corrente.cpf,corrente.telefone,corrente.idade,corrente.saldo,corrente.numero,corrente.senha]}
        elsif(tipo==2)
            puts "Escolha a conta: "
            print ContaP.poupanca.map {|poupanca| [poupanca.nome,poupanca.cpf,poupanca.telefone,poupanca.idade,poupanca.saldo,poupanca.numero,poupanca.senha]}
            break
        end
    elsif(option==6)
        return 0
    end
end