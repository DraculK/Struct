class ContaC
    attr_accessor :saldo, :numeroconta, :senha
    def Depositar
        puts "Depositando.."
    end
    def Sacar
        puts "Sacando.."
    end
    def Saldo
        puts "Seu saldo atual é: #{saldo}"
    end
end

class ContaP
    attr_accessor :saldo, :numeroconta, :senha
    def Depositar
        puts "Depositando.."
    end
    def Sacar
        puts "Sacando.."
    end
    def Saldo
        puts "Seu saldo atual é: #{saldo}"
    end
end

class Pessoa
    attr_accessor :nome, :cpf, :telefone, :idade
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

puts "Escolha a operação a ser realizada: "
puts "1. Listar contas correntes."
puts "2. Listar contas poupança."
puts "3. Criar conta corrente."
puts "4. Criar conta poupança."
puts "5. Acessar conta."
puts "6. Sair."
option = gets.to_i
while(option<1 || option>6)
    puts "Operação inválida"
    puts "1. Listar contas correntes."
    puts "2. Listar contas poupança."
    puts "3. Criar conta corrente."
    puts "4. Criar conta poupança."
    puts "5. Acessar conta."
    puts "6. Sair."
    option = gets.to_i
end
criarConta = false
tipo=0
while(option != 6)
    if(option==1)
        if(criarConta==false)
            puts "Não há conta corrente pra ser listada."
            puts "----------------------------------"
            puts "Escolha a operação a ser realizada: "
            puts "1. Listar contas correntes."
            puts "2. Listar contas poupança."
            puts "3. Criar conta corrente."
            puts "4. Criar conta poupança."
            puts "5. Acessar conta."
            puts "6. Sair."
            option = gets.to_i
            while(option<1 || option>6)
                puts "Operação inválida"
                puts "1. Listar contas correntes."
                puts "2. Listar contas poupança."
                puts "3. Criar conta corrente."
                puts "4. Criar conta poupança."
                puts "5. Acessar conta."
                puts "6. Sair."
                option = gets.to_i
            end
        elsif(criarConta==true && tipo==1)
            pessoa.MostrarConta(pessoa.numeroconta,pessoa.senha)
        end

    elsif(option==2)
        if(criarConta==false)
            puts "Não há conta poupança pra ser listada."
            puts "----------------------------------"
            puts "Escolha a operação a ser realizada: "
            puts "1. Listar contas correntes."
            puts "2. Listar contas poupança."
            puts "3. Criar conta corrente."
            puts "4. Criar conta poupança."
            puts "5. Acessar conta."
            puts "6. Sair."
            option = gets.to_i
            while(option<1 || option>6)
                puts "Operação inválida"
                puts "1. Listar contas correntes."
                puts "2. Listar contas poupança."
                puts "3. Criar conta corrente."
                puts "4. Criar conta poupança."
                puts "5. Acessar conta."
                puts "6. Sair."
                option = gets.to_i
            end
        elsif(criarConta==true && tipo==2)
            pessoa.MostrarConta(pessoa.numeroconta,pessoa.senha)
        end

    elsif(option==3)
        puts("----CONTA CORRENTE----")
        pessoa = Pessoa.new
        conta = ContaC.new
        puts "Digite seu nome: "
        pessoa.nome = gets.to_s
        puts "Digite seu cpf: "
        pessoa.cpf = gets.to_s
        puts "Digite seu telefone: "
        pessoa.telefone = gets.to_s
        puts "Digite sua idade: "
        pessoa.idade = gets.to_i
        puts "Digite quanto quer botar na sua conta: "
        conta.saldo = gets.to_f
        puts "Digite o número que quer na sua conta: "
        conta.numeroconta = gets.to_s
        puts "Digite a senha da sua conta: "
        conta.senha = gets.to_i
        tipo=1
        criarConta=true
        puts "----------------------------------"
        puts "Escolha a operação a ser realizada: "
        puts "1. Listar contas correntes."
        puts "2. Listar contas poupança."
        puts "3. Criar conta corrente."
        puts "4. Criar conta poupança."
        puts "5. Acessar conta."
        puts "6. Sair."
        option = gets.to_i
        while(option<1 || option>6)
            puts "Operação inválida"
            puts "1. Listar contas correntes."
            puts "2. Listar contas poupança."
            puts "3. Criar conta corrente."
            puts "4. Criar conta poupança."
            puts "5. Acessar conta."
            puts "6. Sair."
            option = gets.to_i
        end

    elsif(option==4)
        puts("----CONTA POUPANÇA----")
        pessoa = Pessoa.new
        conta = ContaC.new
        puts "Digite seu nome: "
        pessoa.nome = gets.to_s
        puts "Digite seu cpf: "
        pessoa.cpf = gets.to_s
        puts "Digite seu telefone: "
        pessoa.telefone = gets.to_s
        puts "Digite sua idade: "
        pessoa.idade = gets.to_i
        puts "Digite quanto quer botar na sua conta: "
        conta.saldo = gets.to_f
        puts "Digite o número que quer na sua conta: "
        conta.numeroconta = gets.to_s
        puts "Digite a senha da sua conta: "
        conta.senha = gets.to_i
        tipo=2
        criarConta=true
        puts "----------------------------------"
        puts "Escolha a operação a ser realizada: "
        puts "1. Listar contas correntes."
        puts "2. Listar contas poupança."
        puts "3. Criar conta corrente."
        puts "4. Criar conta poupança."
        puts "5. Acessar conta."
        puts "6. Sair."
        option = gets.to_i
        while(option<1 || option>6)
            puts "Operação inválida"
            puts "1. Listar contas correntes."
            puts "2. Listar contas poupança."
            puts "3. Criar conta corrente."
            puts "4. Criar conta poupança."
            puts "5. Acessar conta."
            puts "6. Sair."
            option = gets.to_i
        end

    elsif(option==5)
        if(criarConta==false)
            puts "Não há conta para ser acessada."
        elsif(criarConta==true)
            if(tipo==1)
                puts "Tipo de conta: CORRENTE"
            elsif(tipo==2)
                puts "Tipo de conta: POUPANÇA"
            end
            puts "Digite a sua opção: "
            puts "1. Depositar"
            puts "2. Sacar"
            puts "3. Exibir saldo"
            puts "4. Modificar telefone"
            puts "5. Exibir dados pessoais"
            puts "6. Exibir dados da conta"
            puts "7. Sair"
            opt = gets.to_i
            while(opt<1 || opt>7)
                puts "Escolha uma operação válida"
                puts "1. Depositar"
                puts "2. Sacar"
                puts "3. Exibir saldo"
                puts "4. Modificar telefone"
                puts "5. Exibir dados pessoais"
                puts "6. Exibir dados da conta"
                puts "7. Sair"
                opt = gets.to_i
            end
        end

    elsif(option==6)
        return 0
    end
end