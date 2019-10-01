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
lit = Literal.new(50)
lit1 = Literal.new(40)
lit2 = Literal.new(5)
lit3 = Literal.new(10)
lit4 = Literal.new(15)
sum = Add.new(lit, lit1)
mul = Mul.new(sum, lit2)
div = Div.new(mul, lit3)
subi = Sub.new(lit4, div)
puts subi.eval