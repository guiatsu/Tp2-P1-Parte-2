require './src/Core'
module Eval
    module Expression #modulo com uma declaracao abstrada de evaluate
        def exp_eval(operator)
            raise NotImplementedError, 'eval is not implemented on both expressions' unless (@left.class.method_defined? :eval or @right.class.method_defined? :eval)
            raise NotImplementedError, 'eval is not implemented on left expression' unless @left.class.method_defined? :eval
            raise NotImplementedError, 'eval is not implemented on right expression' unless @right.class.method_defined? :eval
            return @left.eval.send(operator, @right.eval)
        end
    end
    include Core
    include Expression
    class Literal < Lit #classe que herda o metodo de printar do Lit e implementa o Evaluate
        def initialize(value)
            @value = value
        end
        def eval
            return @value
        end
    end
end