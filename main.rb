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
lit1 = Literal.new(10)
lit2 = Literal.new(15)
sum = Add.new(lit1, lit2)
mul = Mul.new(lit1, lit2)
div = Div.new(lit1, lit2)
subi = Sub.new(lit1, lit2)
puts sum.eval