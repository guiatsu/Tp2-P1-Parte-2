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
mul = Mul.new(15, sum)
div = Div.new(mul, 2)
subi = Sub.new(div, 15)
puts subi.eval