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
                if(is_number(@left))
                    left = @left
                else
                    left = @left.eval
                end
                if(is_number(@right))
                    right = @right
                else
                    right = @right.eval
                end
    
                return (left / right).to_f
            end
            
        end
    end
end
