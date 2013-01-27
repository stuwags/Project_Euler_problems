string = 1.to_s

for i in 2..199_988
  string = string + i.to_s
end

array_numbers = []
array_numbers << 1
array_numbers << 10
array_numbers << 100
array_numbers << 1000
array_numbers << 10000
array_numbers << 100000
array_numbers << 1000000

product = 1

array_numbers.each do |number|
  found = string[number-1].to_i
  product = product * found
end
puts product