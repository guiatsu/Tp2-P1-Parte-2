# TRABALHO 1 DE TÉCNICAS DE PROGRAMAÇÃO 2

### QUESTÃO 2: EXPRESSION PL

Implemente uma nova versão da família de programas para avaliação de expressões [1], utilizando uma linguagem de programação do seu interesse. Identifique construções dessa linguagem de programação que podem favorecer a modularização da família de programas.

### EXECUÇÃO:

```bash
ruby main.rb
```

Criação de variáveis e Impressão na Tela:

```ruby
variavel1 = Literal.new(10)   #Variavel
variavel2 = Literal.new(15)   #Variavel
sum = Add.new(lit1, lit2)     #Soma
mul = Mul.new(lit1, lit2)     #Multiplicacao
div = Div.new(lit1, lit2)     #Divisao
subi = Sub.new(lit1, lit2)    #Subtracao
puts sum.eval                 #Impressao do Valor
puts sum.print                #Impressao da Expressao
```