# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def is_this_prime(number) 
  puts "#{number} is starting prime test...."
  tester = Math.sqrt(number).to_i
  might_be_prime = true
  while tester > 1 && might_be_prime == true
    if number%tester == 0
      might_be_prime = false
      puts "Prime failed because #{number} is divisible by #{tester}"
      return false
    else
      tester -= 1
    end
  end
  if tester == 1
    return true
  end
end

def is_this_common_multiple(number)
  if number%2 == 0 || number%3 == 0 || number%5 == 0 || number%7 == 0 || number%11 == 0 || number%13 == 0
    return true
  else
    return false
  end
end

def is_this_a_multiple_of(tester, bignumber)
  bignumber % tester == 0
end

def find_lowest_prime_multiple(number)
  original = number #store the factor being tested against
  number = number / 2 #no large prime multiples could be larger than half the number
  no_result_yet = true #get the loop started
  while no_result_yet == true
    if is_this_a_multiple_of(number, original) && is_this_prime(number) && !is_this_common_multiple(number)
      no_result_yet = false
      puts "Congrats, your prime is #{number}"
    elsif number < 14
      no_result_yet = false
      puts "Congrats, your prime is #{number}"
    else
      number -= 1
      while !is_this_common_multiple(number)
        number -=1
      end
      puts "tests on #{number} start now"
    end
  end
end

response = "c"
while response == "c"
  puts "enter number to try"
  number = gets.chomp.to_i
    puts find_lowest_prime_multiple(number)
  puts "push c to continue"
  response = gets.chomp
end





