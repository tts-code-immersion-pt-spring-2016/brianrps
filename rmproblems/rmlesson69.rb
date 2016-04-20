def add(*numbers)
  return numbers.inject{|n1,n2| n1+n2}
end

def subtract(*numbers)
  return numbers.inject{|n1,n2| n1-n2}
end

def calculate(*numbers)
  operation = numbers[-1]
  if operation.is_a?(Hash)
    numbers.delete(numbers.last)
    calc = add(*numbers) if operation[:add]
    calc = subtract(*numbers) if operation[:subtract]
  else
    calc = add(*numbers)
  end
  return calc
end

puts "#{add(4,5)} should = 9"
puts "#{add(-10,2,3)} should = -5"
puts "#{add(0,0,0,0)} should = 0"
puts "#{subtract(4,5)} should = -1"
puts "#{subtract(-10,2,3)} should = -15"
puts "#{subtract(0,0,0,0,-10)} should = -10"
puts "#{calculate(4,5)} should = 9"
puts "#{calculate(4,5,add:true)} should = 9"
puts "#{calculate(4,5,subtract:true)} should = -1"
puts "#{calculate(-10,2,3,subtract:true)} should = -15"
puts "#{calculate(0,0,0,0,-10,subtract:true)} should = 10"
