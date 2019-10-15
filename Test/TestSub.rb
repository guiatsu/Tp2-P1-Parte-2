require './src/Eval'
require './src/SubEval'

class Test_Sub < Test::Unit::TestCase
    include Eval
    include Sub_Eval
    def test_subi1
        lit = Literal.new(10)
        lit1 = Literal.new(15.25)
        subi = Sub.new(lit, lit1)
        assert_equal -5.25, subi.eval
    end
    def test_subi2
        lit = Literal.new(10)
        subi = Sub.new(lit, 15.2)
        assert_equal "(10-15.2)", subi.print
    end
    def test_subi3
        subi = Sub.new(3156, 548)
        assert_equal 2608, subi.eval
    end
    def test_subi4
        lit = Literal.new(3156)
        lit1 = Literal.new(548)
        subi = Sub.new(lit, lit1)
        assert_equal "(3156-548)", subi.print
    end
    

end