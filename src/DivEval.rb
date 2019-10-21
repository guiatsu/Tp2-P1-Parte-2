require './src/Eval'
require './src/Div'
module Div_Eval
    include Core_Div
    class Div < C_Div   #real implementacao da divisao com os metodos print e evaluate
        include Eval::Expression
        def initialize(left, right)
            @left = left
            @right = right
            def eval()
                return exp_eval("/")
            end
            
        end
    end
end
