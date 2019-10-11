require './src/Eval'
require './src/Add'
module Add_Eval
    include Core_Add
    class Add < C_Add   #real implementacao da soma com os metodos print e evaluate
        include Eval::Expression
        def initialize(left, right)
            @left = left
            @right = right
            def eval
                return @left.eval + @right.eval
            end
            
        end
    end
end
