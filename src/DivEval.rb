require './src/Eval'
require './src/Div'
module Div_Eval
    include Core_Div
    class Div < C_Div
        include Eval::Expression
        def initialize(left, right)
            @left = left
            @right = right
            def eval
                return @left.eval / @right.eval
            end
            
        end
    end
end
