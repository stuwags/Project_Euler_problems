# 2520

# 1-20

def run_da_test
  number = 1
  while !divisible_test_to_twenty(number)
    number += 1
    # if number%100000000 == 0
    #   puts number
    # end
  end
  puts "The smallest number divisible by 1-20 is " + number.to_s
end

def divisible_test_to_twenty(number)
  divisible = true; divisible_test_number = 2
  while divisible == true && divisible_test_number < 21
    if number%divisible_test_number == 0
      divisible_test_number += 1
    else
      divisible = false
    end
  end
  return divisible
end

run_da_test