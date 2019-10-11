
module Core
    module Exp	#modulo com metodo abstrato de printar
        def print

        end
    end
    class Lit	#modulo referente a Literals
        include Exp		#importando os metodos de exp para implementah-los
        def initialize(value)
            @value = value
        end
        def print()		#metodo que retorna o valor como string
            return @value.to_s
        end
    end
end