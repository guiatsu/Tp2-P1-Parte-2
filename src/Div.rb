require './src/Core'
module Core_Div
    module Exp_Div  # modulo responsavel por implementar a forma de printar expressao para divisao
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

            return "(" + left + "/" + right + ")" 
        end
    end
    class C_Div
        include Exp_Div
        def initialize(left, right)
            @left = left
            @right = right
        end
    end
end
