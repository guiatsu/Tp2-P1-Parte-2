require './src/Core'
module Eval
    module Expression #modulo com uma declaracao abstrada de evaluate
        def eval

        end
    end
    include Core
    include Expression
    class Literal < Lit #classe que herda o metodo de printar do Lit e implementa o Evaluate
        def eval
            return @value
        end
    end
end