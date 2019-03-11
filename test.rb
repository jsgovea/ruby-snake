require 'byebug'

class Calculator
  def sum(a, b)
    a + b
  end

  def substract(a, b)
    a - b
  end
end

calc = Calculator.new
tests_sum = {
    [1, 2] => 3,
    [5, 6] => 11,
    [100, 1] => 101
}

#en el each recibimos la clave y el valor

#recorro el hash de tes_sum
#Ejemplo primer ciclo input[0]=1 input[1]=2 , expect_result=3
#cal.sum(1,2)=3/==3

tests_sum.each do |input, expec_result|
 # byebug
  if !(calc.sum(input[0], input[1]) == expec_result)
    raise "Test failed for input #{input}. Expected result #{expec_result}"
  end
end