module Core
    module Exp	#modulo com metodo abstrato de printar
        def exp_print(signal)
            raise NotImplementedError, 'print is not implemented on both expressions' unless (@left.class.method_defined? :print or @right.class.method_defined? :print)
            raise NotImplementedError, 'print is not implemented on left expression' unless @left.class.method_defined? :print
            raise NotImplementedError, 'print is not implemented on right expression' unless @right.class.method_defined? :print
            return "(" + @left.print + signal + @right.print + ")"

        end
    end
    
    class Lit	#modulo referente a Literals
        def initialize(value)
            @value = value
        end
        def print()		#metodo que retorna o valor como string
            return @value.to_s
        end
    end
end