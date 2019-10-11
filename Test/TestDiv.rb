require './src/Eval'
require './src/DivEval'

class Test_Div < Test::Unit::TestCase
    include Eval
    include Div_Eval
    def test_div1
        lit = Literal.new(100)
        lit1 = Literal.new(10)
        div = Div.new(lit, lit1)
        assert_equal 10, div.eval
    end
    def test_div2
        lit = Literal.new(100)
        lit1 = Literal.new(10)
        div = Div.new(lit, lit1)
        assert_equal "(100/10)", div.print
    end
    def test_div3
        lit = Literal.new(2500)
        lit1 = Literal.new(50)
        div = Div.new(lit, lit1)
        assert_equal 50, div.eval
    end
    def test_div4
        lit = Literal.new(2500)
        lit1 = Literal.new(50)
        div = Div.new(lit, lit1)
        assert_equal "(2500/50)", div.print
    end
    

end