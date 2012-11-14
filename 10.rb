def prime_number?(number)
  max_tester = Math.sqrt(number).to_i
  prime_tester = 2; might_be_prime = true
  while prime_tester <= max_tester && might_be_prime == true
    if number%prime_tester == 0
      might_be_prime = false
    else
      prime_tester += 1
    end
  end
  return might_be_prime
end

@primes = []

for i in 2..2_000_000
  if prime_number?(i)
    @primes << i
  end
end

puts @primes.inject(0){|sum,prime| sum + prime}