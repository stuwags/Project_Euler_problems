@fa = 1
@fb = 1
@ticker = 2
def fibonacci_sequence
temp = @fa + @fb
@fa = @fb
@fb = temp
@ticker += 1
end

while @fb.to_s.length < 1000
  fibonacci_sequence
end
puts "This is the first three digit fib number #{@fa} and this is the number the precedes it #{@fb}"
puts "It happened at f #{@ticker}"