require './src/Core'
module Core_Add
    module Exp_Add
        include Core::Exp
        def print()
            return "(" + @left.print + "+" + @right.print + ")" 
        end
    end
    class C_Add
        include Exp_Add
        def initialize(left, right)
            @left = left
            @right = right
        end
    end
end

