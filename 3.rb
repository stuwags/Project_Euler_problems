# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def prime_factors?(number)
  @prime_factors = []
  max_tester = Math.sqrt(number)
  factor_tester = 1
  while factor_tester <= max_tester
    if number%factor_tester == 0 && prime_number?(factor_tester) == true
      @prime_factors << factor_tester
      puts @prime_factors
    end
    factor_tester += 1
  end
  puts @prime_factors
end

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

prime_factors?(600851475143)
puts prime_number?(4)