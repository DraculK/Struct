#Exercício - 2
class Conta
    attr_accessor :nome, :cpf, :telefone, :idade, :saldo, :numeroconta, :senha
    def Depositar
        puts "Depositando.."
    end
    def Sacar
        puts "Sacando.."
    end
    def Saldo
        puts "Seu saldo atual é: #{saldo}"
    end
    def ModificarTel
        puts "Digite o novo número de telefone: "
        novotelefone = gets.to_s
        @telefone=novotelefone
        puts "Seu novo número de telefone é: #{@telefone}"
    end
    def MostrarPessoal(nome,cpf,telefone,idade)
        puts "Nome: #{nome}"
        puts "CPF: #{cpf}"
        puts "Telefone: #{telefone}"
        puts "Idade: #{idade}"
    end
    def MostrarConta(numeroconta,senha)
        puts "Número da conta: #{numeroconta}"
        puts "Senha: #{senha}"
    end
end

conta = Conta.new()
conta.nome = "Ramón Valdés"
conta.cpf = "000.000.000-00"
conta.telefone = "4002-8922"
conta.idade = 65
conta.saldo = 100000
conta.numeroconta = "1234 013 12345678-9"
conta.senha = "4321"

puts "Digite a sua opção: "
puts "1. Depositar"
puts "2. Sacar"
puts "3. Exibir saldo"
puts "4. Modificar telefone"
puts "5. Exibir dados pessoais"
puts "6. Exibir dados da conta"
puts "7. Sair"
option = gets.to_i
while(option<1 || option>7)
    puts "Escolha uma operação válida"
    puts "1. Depositar"
    puts "2. Sacar"
    puts "3. Exibir saldo"
    puts "4. Modificar telefone"
    puts "5. Exibir dados pessoais"
    puts "6. Exibir dados da conta"
    puts "7. Sair"
    option = gets.to_i
end
while(option!=7)
    if(option==1)
        puts
        conta.Depositar
        puts
        puts "1. Depositar"
        puts "2. Sacar"
        puts "3. Exibir saldo"
        puts "4. Modificar telefone"
        puts "5. Exibir dados pessoais"
        puts "6. Exibir dados da conta"
        puts "7. Sair"
        option = gets.to_i
    elsif(option==2)
        puts
        conta.Sacar
        puts
        puts "1. Depositar"
        puts "2. Sacar"
        puts "3. Exibir saldo"
        puts "4. Modificar telefone"
        puts "5. Exibir dados pessoais"
        puts "6. Exibir dados da conta"
        puts "7. Sair"
        option = gets.to_i
    elsif(option==3)
        puts
        conta.Saldo
        puts
        puts "1. Depositar"
        puts "2. Sacar"
        puts "3. Exibir saldo"
        puts "4. Modificar telefone"
        puts "5. Exibir dados pessoais"
        puts "6. Exibir dados da conta"
        puts "7. Sair"
        option = gets.to_i
    elsif(option==4)
        puts
        conta.ModificarTel
        puts
        puts "1. Depositar"
        puts "2. Sacar"
        puts "3. Exibir saldo"
        puts "4. Modificar telefone"
        puts "5. Exibir dados pessoais"
        puts "6. Exibir dados da conta"
        puts "7. Sair"
        option = gets.to_i
    elsif(option==5)
        puts
        conta.MostrarPessoal(conta.nome,conta.cpf,conta.telefone,conta.idade)
        puts
        puts "1. Depositar"
        puts "2. Sacar"
        puts "3. Exibir saldo"
        puts "4. Modificar telefone"
        puts "5. Exibir dados pessoais"
        puts "6. Exibir dados da conta"
        puts "7. Sair"
        option = gets.to_i
    elsif(option==6)
        puts
        conta.MostrarConta(conta.numeroconta,conta.senha)
        puts
        puts "1. Depositar"
        puts "2. Sacar"
        puts "3. Exibir saldo"
        puts "4. Modificar telefone"
        puts "5. Exibir dados pessoais"
        puts "6. Exibir dados da conta"
        puts "7. Sair"
        option = gets.to_i
    elsif(option==7)
        return 0
end
end