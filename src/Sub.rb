require './src/Core'
module Core_Sub
    module Exp_Sub  # modulo responsavel por implementar a forma de printar expressao para subtracao
        include Core::Exp
        def print()
            exp_print("-")
        end
    end
    class C_Sub
        include Exp_Sub
        def initialize(left, right)
            @left = left
            @right = right
        end
    end
end
