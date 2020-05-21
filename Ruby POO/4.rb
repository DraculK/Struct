#Exercício - 4
class Turma
    attr_accessor :materia, :alunos
    def initialize
        @alunos = []
    end
    aprovados=0
    def aprovado(nota)
        if nota>=5
            aprovados = 1
        elsif nota<5
            aprovados = 0
        end
    end
end
puts "Qual o número de turmas desse semestre?"
qtdTurmas = gets.to_i
while qtdTurmas<1 || qtdTurmas>10
    puts "Quantidade inválida, tente outro valor entre 1 e 10"
    qtdTurmas = gets.to_i
end
turmas = []
alunos = []
materias = ["Cálculo 1", "Cálculo 2", "Cálculo 3", "Física 1", "Física 2", "Estruturas de Dados", "Algoritmos e Programação de Computadores", "Técnicas de Programação 1", "Sistemas Digitais", "Eletromagnetismo"]
qtdTurmas.times do 
    turmas<<Turma.new()
end
i=0
while i!=qtdTurmas
    turmas[i].materia=materias[i]
    i+=1
end
x=0
while x!=qtdTurmas
    alunos[x]=rand(5..20)
    x+=1
end
