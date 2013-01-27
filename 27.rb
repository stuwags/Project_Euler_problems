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

@max_streak = 0

for a in -1000..1000
  for b in -1000..1000
    streak_going = true
    n = 0
    while streak_going
      value = (n**2) + (a*n) + b
      if value > 0 && prime_number?(value)
        n += 1
      else
        streak_going = false
        if @max_streak < n
          puts @max_streak = n
          puts a * b
        end
      end
    end
  end
end