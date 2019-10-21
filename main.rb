require './src/SubEval'
require './src/AddEval'
require './src/MulEval'
require './src/DivEval'
require './src/Eval'
include Add_Eval
include Sub_Eval
include Mul_Eval
include Div_Eval
include Eval

lit1 = Lit.new(10)
lit2 = Literal.new(15)
lit3 = Literal.new(2)
sum = Add.new(lit1, lit2)
mul = Mul.new(lit2, sum)
div = Div.new(mul, lit3)
subi = Sub.new(div, lit2)
puts sum.print