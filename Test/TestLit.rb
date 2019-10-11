require './src/Eval'
class Test_Literal < Test::Unit::TestCase
    include Eval
    def test_lit
        @lit = Literal.new(10)
        assert_equal 10, @lit.eval
    end
    def test_lit1
        @lit = Literal.new(10)
        assert_equal "10", @lit.print
    end
    def test_lit2
        @lit = Literal.new(106)
        assert_equal "106", @lit.print
    end
    def test_lit3
        @lit = Literal.new(106)
        assert_equal 106, @lit.eval
    end
    def test_lit4
        @lit = Literal.new(15.79365)
        assert_equal "15.79365", @lit.print
    end
    def test_lit5
        @lit = Literal.new(15.79365)
        assert_equal 15.79365, @lit.eval
    end
end