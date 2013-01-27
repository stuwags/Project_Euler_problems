num = 1

for i in 1..500
  num += 4*((2*i + 1)**2)-(12*i)
end

puts num