require './src/Core'
module Core_Mul
    module Exp_Mul  # modulo responsavel por implementar a forma de printar expressao para multiplicacao
        include Core::Exp
        include Core::Is_number
        def print()
            if(is_number(@left))
                left = @left.to_s
            else
                left = @left.print
            end
            if(is_number(@right))
                right = @right.to_s
            else
                right = @right.print
            end

            return "(" + left + "*" + right + ")" 
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
