def is_whole?(number)
  number % 1 == 0
end


for a in 1..1000
  for b in 1..1000
    c = Math.sqrt(a**2 + b**2)
    # puts "Got a #{a} and b #{b} and c #{c} at c sqrt"
    if is_whole?(c) && a + b + c == 1000
        puts "Got match at #{a} and b #{b} and c #{c}
        and its product is #{a * b * c}"
    end
  end
end