require './src/core'
module Core_Div
    module Exp_Div
        include Core::Exp
        def print()
            return "(" + @left.print + "/" + @right.print + ")" 
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
