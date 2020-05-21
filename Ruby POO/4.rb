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
aprovadoDisc = []
notas = []
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
totalAlunos=0
for i in 0..qtdTurmas
    totalAlunos+=alunos[i].to_i
end
passou=0
f=0
while f!=qtdTurmas
    for i in 0..alunos[f]
        notas[i]=rand(0..10)
        if notas[i]>=5
            passou+=1
        end
    end
    aprovadoDisc[f]=passou
    f+=1
    passou = 0
end
notaTotal=0
# for i in 0..totalAlunos
#     notas[i]=rand(0..10)
#     if notas[i]>=5
#         passou+=1
#     end
# end
# x=passou.to_f
# y=totalAlunos.to_f
# porctotal=(x/y*100).round(2)
# puts "Porcentagem total de aprovados: #{porctotal}"
aprovadosTotal=0
for i in 0..qtdTurmas-1
    x=(aprovadoDisc[i].to_f/alunos[i]*100).round(2)
    puts "Na matéria "+materias[i]+", foram aprovados #{x}%"
    aprovadosTotal+=aprovadoDisc[i]
end
y=(aprovadosTotal.to_f/totalAlunos.to_f*100).round(2)
puts "No total, foram aprovados #{y}%"