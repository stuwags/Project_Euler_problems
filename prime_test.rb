

def prime_test(multiple) 
  tester = Math.sqrt(multiple).to_i
  might_be_prime = true
  while tester > 1 && might_be_prime == true do
    if multiple%tester == 0 || multiple%2 == 0 || multiple%3 == 0 || multiple%5 == 0 || multiple%7 == 0
      might_be_prime = false
      return false
    elsif
      tester -= 1
      puts "tester reduction to #{tester}"
    end
  end
  if tester == 1
    return true
  end
end

puts "put in a number"
number = gets.to_i
puts prime_test(number)