require './src/Core'
module Core_Div
    module Exp_Div  # modulo responsavel por implementar a forma de printar expressao para divisao
        include Core::Exp
        def print()
            exp_print("/")
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
