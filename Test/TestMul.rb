require './src/Eval'
require './src/MulEval'

class Test_Mul < Test::Unit::TestCase
    include Eval
    include Mul_Eval
    def test_mul1
        lit = Literal.new(10)
        lit1 = Literal.new(15)
        mul = Mul.new(lit, lit1)
        assert_equal 150, mul.eval
    end
    
    def test_mul2
        lit = Literal.new(10)
        lit1 = Literal.new(15)
        mul = Mul.new(lit, lit1)
        assert_equal "(10*15)", mul.print
    end
    
    def test_mul3
        lit = Literal.new(3156)
        lit1 = Literal.new(548)
        mul = Mul.new(lit, lit1)
        assert_equal 1729488, mul.eval
    end
    
    def test_mul4
        lit = Literal.new(3156)
        lit1 = Literal.new(548)
        mul = Mul.new(lit, lit1)
        assert_equal "(3156*548)", mul.print
    end
    

end