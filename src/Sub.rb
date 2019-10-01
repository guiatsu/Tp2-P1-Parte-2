require './src/core'
module Core_Sub
    module Exp_Sub
        include Core::Exp
        def print()
            return "(" + @left.print + "-" + @right.print + ")" 
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
