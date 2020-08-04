class CuentaBancaria
    attr_accessor :nombre_de_usuario
    def initialize(nombre_de_usuario, numero_de_cuenta, vip=0)

        if numero_de_cuenta.digits.count != 8
            raise RangeError, 'Numero de digitos no es 8'
        end

        if !(0..1).include?(vip)
            raise RangeError, 'Numero no valido' 
        end
        
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
    end

    def numero_de_cuenta
        "#{@vip}-#{@numero_de_cuenta}"
    end
end

c1 = CuentaBancaria.new("Pedro", 12345678)
puts c1.numero_de_cuenta
c2 = CuentaBancaria.new("Juan", 123456789)
puts c2