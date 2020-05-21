#Exercício - 3
#Esse exercício ficou horrível, mas esse foi o único jeito que "consegui".
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
# contaEX1 = ContaC.new("Hayao Miyazaki", "111.111.111-11", "9519-9519", 79, 60000, "1234 013 12345678-0", "1234")
# contaEx1 = ContaC.new("Ramón Valdés", "000.000.000-00", "4002-8922", 65, 100000, "1234 013 12345678-9", "4321")
# puts contaEx.nome
# puts contaEx.cpf
# puts contaEx.telefone
# puts contaEx.idade
# puts contaEx.saldo
# puts contaEx.numero
# puts contaEx.senha
i=0
cc = []
nomecorrente = []
cpfcorrente = []
telefonecorrente = []
idadecorrente = []
saldocorrente = []
numerocorrente = []
senhacorrente = []
f=0
pp = []
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
        nomecorrente[i]=gets.to_s.strip
        puts "Digite o seu cpf: "
        cpfcorrente[i]=gets.to_s.strip
        puts "Digite o seu telefone: "
        telefonecorrente[i]=gets.to_s.strip
        puts "Digite a sua idade: "
        idadecorrente[i]=gets.to_i
        puts "Digite o valor que será colocado na conta: "
        saldocorrente[i]=gets.to_i
        puts "Digite o número da sua conta: "
        numerocorrente[i]=gets.to_s.strip
        puts "Digite uma senha para a conta: "
        senhacorrente[i]=gets.to_i
        cc[i] = ContaC.new(nomecorrente[i],cpfcorrente[i],telefonecorrente[i],idadecorrente[i],saldocorrente[i],numerocorrente[i],senhacorrente[i])
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
        nomepoupanca[f]=gets.to_s.strip
        puts "Digite o seu cpf: "
        cpfpoupanca[f]=gets.to_s.strip
        puts "Digite o seu telefone: "
        telefonepoupanca[f]=gets.to_s.strip
        puts "Digite a sua idade: "
        idadepoupanca[f]=gets.to_i
        puts "Digite o valor que será colocado na conta: "
        saldopoupanca[f]=gets.to_i
        puts "Digite o número da sua conta: "
        numeropoupanca[f]=gets.to_s.strip
        puts "Digite uma senha para a conta: "
        senhapoupanca[f]=gets.to_i
        pp[f] = ContaP.new(nomepoupanca[f],cpfpoupanca[f],telefonepoupanca[f],idadepoupanca[f],saldopoupanca[f],numeropoupanca[f],senhapoupanca[f])
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
            puts "Digite o CPF da conta que você quer acessar: "
            cpff=gets.to_s.strip
            for d in 0..i+1 
                if cpff==cpfcorrente[d]
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
                            puts "Quando deseja depositar?"
                            num = gets.to_i
                            cc[d].Depositar(num)
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
                            puts "Quando deseja sacar?"
                            num = gets.to_i
                            cc[d].Sacar(num)
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
                            cc[d].Saldo
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
                            cc[d].ModificarTel
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
                            cc[d].MostrarPessoal(cc[d].nome,cc[d].cpf,cc[d].telefone,cc[d].idade)
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
                            cc[d].MostrarConta(cc[d].numero,cc[d].senha)
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
                            break
                            return 0
                        end
                    end
                elsif(option==7)
                    return 0
                elsif(d>i && option!=7)
                    puts "Não há conta com esse CPF"
                    break;
                end
                d+=1
            end
        elsif(tipo==2)
            puts "Digite o CPF da conta que você quer acessar: "
            cpff=gets.to_s.strip
            if cpff=="000.000.000-00"
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
                        puts "Quando deseja depositar?"
                        num = gets.to_i
                        contaEx.Depositar(num)
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
                        puts "Quando deseja sacar?"
                        num = gets.to_i
                        contaEx.Sacar(num)
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
                        contaEx.Saldo
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
                        contaEx.ModificarTel
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
                        contaEx.MostrarPessoal(contaEx.nome,contaEx.cpf,contaEx.telefone,contaEx.idade)
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
                        contaEx.MostrarConta(contaEx.numero,contaEx.senha)
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
                        break
                        return 0
                    end
                end
            elsif
                for d in 0..f+1 
                    if cpff==cpfpoupanca[d]
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
                                puts "Quando deseja depositar?"
                                num = gets.to_i
                                pp[d].Depositar(num)
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
                                puts "Quando deseja sacar?"
                                num = gets.to_i
                                pp[d].Sacar(num)
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
                                pp[d].Saldo
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
                                pp[d].ModificarTel
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
                                pp[d].MostrarPessoal(pp[d].nome,pp[d].cpf,pp[d].telefone,pp[d].idade)
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
                                pp[d].MostrarConta(pp[d].numero,pp[d].senha)
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
                    elsif(d>f && option!=7)
                        puts "Não há conta com esse CPF"
                        break;
                    end
                    d+=1
                end
            end
            break
        end
    elsif(option==6)
        return 0
    end
end