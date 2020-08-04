class Carta
    attr_accessor :numero, :pinta
    def initialize (numero, pinta)
        if !(1..13).include?(numero)
            raise ArgumentError, 'Numero no esta entre 1 y 13'
        end
        if !['C','D','P','T'].include?(pinta)
            raise ArgumentError, 'Pinta no es valida'
        end
        @numero = numero
        @pinta = pinta
    end
    def numero=(numero)
        if !(1..13).include?(numero)
            raise ArgumentError, 'Numero no esta entre 1 y 13'
        end
        @numero = numero
    end

    def pinta=(pinta)
        if !['C','D','P','T'].include?(pinta)
            raise ArgumentError, 'Pinta no es valida'
        end
        @pinta = pinta
    end
    def self.numero
        Random.rand(1..13)
    end
    def self.pinta
        ['C','D','P','T'].sample
    end

end

cards_array = []
5.times do
    pinta1 = Carta.pinta
    numero1 = Carta.numero
    cards_array.push Carta.new(numero1,pinta1)   
end

print cards_array








