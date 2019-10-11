require './src/Eval'
require './src/Mul'
module Mul_Eval
    include Core_Mul
    class Mul < C_Mul   #real implementacao da multiplicacao com os metodos print e evaluate
        include Eval::Expression
        def initialize(left, right)
            @left = left
            @right = right
            def eval
                return @left.eval * @right.eval
            
            end        
        end    
    end
end
