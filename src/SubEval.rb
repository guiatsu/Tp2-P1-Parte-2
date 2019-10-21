require './src/Eval'
require './src/Sub'
module Sub_Eval
    include Core_Sub
    class Sub < C_Sub   #real implementacao da subtracao com os metodos print e evaluate
        include Eval::Expression
        def initialize(left, right)
            @left = left
            @right = right
            def eval()
                return exp_eval("-")
            end
            
        end
    end
end
