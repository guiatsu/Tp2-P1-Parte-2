
module Core
    module Exp
        def print

        end
    end
    class Lit
        include Exp
        def initialize(value)
            @value = value
        end
        def print()
            return @value.to_s
        end
    end
end