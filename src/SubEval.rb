require './src/Eval'
require './src/Sub'
module Sub_Eval
    include Core_Sub
    class Sub < C_Sub
        include Eval::Expression
        def initialize(left, right)
            @left = left
            @right = right
            def eval
                return @left.eval - @right.eval
            end
            
        end
    end
end
