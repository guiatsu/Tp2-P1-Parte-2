require './src/Core'
module Eval
    module Expression
        include Core::Exp
        def eval

        end
    end
    include Core
    class Literal < Lit
        def eval
            return @value
        end
    end
end