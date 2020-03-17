# ruby é considerada uma linguagem puramente orientada a objetos
# pq no ruby tudo sao objetos

# Classe posui atributos e métodos 
# Características e Ações

# Carro (Nome, Marca, Modelo, Cor, Quantidade de portas, etc...)
# Ligar, buzinar, parar, etc...


class Carro
    attr_accessor :nome     
    def Ligar
        puts 'O carro está pronto para inciar o trajeto'
    end
end

civic = Carro.new
civic.nome = 'Civic'


puts civic.nome
civic.Ligar
