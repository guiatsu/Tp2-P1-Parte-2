require './src/Core'
module Core_Mul
    module Exp_Mul
        include Core::Exp
        def print()
            return "(" + @left.print + "*" + @right.print + ")" 
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
