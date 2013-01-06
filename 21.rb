
def sum_divisors(n)
  divisors = [1]

  for i in 2..Math.sqrt(n)
    if n % i == 0
      divisors << i
      divisors << (n/i)
    end
  end
  divisors.inject(:+) #returns sum
end

amicable_numbers = []

for i in 1..9999
  candidate = sum_divisors(i)
  if i == sum_divisors(candidate) && i != candidate
    amicable_numbers << i
  end
end

puts amicable_numbers.inject(:+)