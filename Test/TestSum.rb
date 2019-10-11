require './src/Eval'
require './src/AddEval'

class Test_Sum < Test::Unit::TestCase
    include Eval
    include Add_Eval
    def test_sum1
        lit = Literal.new(10)
        lit1 = Literal.new(15.2)
        sum = Add.new(lit, lit1)
        assert_equal 25.2, sum.eval
    end
    def test_sum2
        lit = Literal.new(10)
        lit1 = Literal.new(15.2)
        sum = Add.new(lit, lit1)
        assert_equal "(10+15.2)", sum.print
    end
    def test_sum3
        lit = Literal.new(3156)
        lit1 = Literal.new(548)
        sum = Add.new(lit, lit1)
        assert_equal 3704, sum.eval
    end
    def test_sum4
        lit = Literal.new(3156)
        lit1 = Literal.new(548)
        sum = Add.new(lit, lit1)
        assert_equal "(3156+548)", sum.print
    end
    

end