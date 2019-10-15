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
    
                return (left - right).to_f
            end
            
        end
    end
end
