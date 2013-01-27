products = []

for a in 2..100
  for b in 2..100
    products << a**b
  end
end

puts products.uniq.length