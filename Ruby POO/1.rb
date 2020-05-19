#Exercício - 1
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

conta.Depositar
conta.Sacar
conta.Saldo
conta.ModificarTel
conta.MostrarPessoal(conta.nome,conta.cpf,conta.telefone,conta.idade)
conta.MostrarConta(conta.numeroconta,conta.senha)