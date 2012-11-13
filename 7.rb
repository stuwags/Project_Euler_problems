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
  if might_be_prime
    true
  else
    false
  end
end



@number = 2; prime_list = []
while prime_list.length < 10001
  if prime_number?(@number)
    prime_list << @number
  end
  @number += 1
end
puts prime_list.last