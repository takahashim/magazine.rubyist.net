require 'abnf'
fmt = <<EOS
  expr  = prim 0*(op prim)
  prim  = ["("] num [")"]
  num   = 1*("0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9")
  op    = "+" | "-" | "*" | "/"
EOS
reg = ABNF.regexp(fmt)
str = "3+(2-1)は4です。33(23)は33と(23)に区別されます。"
puts( str.gsub(reg){|expr| eval(expr)} )
