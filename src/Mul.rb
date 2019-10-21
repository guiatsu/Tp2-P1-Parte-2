require './src/Core'
module Core_Mul
    module Exp_Mul  # modulo responsavel por implementar a forma de printar expressao para multiplicacao
        include Core::Exp
        def print()
            exp_print("*")
        end
    end
    class C_Mul
        include Exp_Mul
        def initialize(left, right)
            @left = left
            @right = right
        end
    end
end
