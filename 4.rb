def palidrome?(number)
  number_reversed_string = number.to_s.reverse
  if number_reversed_string == number.to_s
    true
  else
    false
  end
end


def largest_palindrome_for_three_digit()
  number1 = 1; @palidrome = 0
  while number1 <= 999
    number2 = 1
    while number2 <= 999
      if palidrome?(number1*number2) && number1*number2 > @palidrome
        @palidrome = number1*number2
      end
      # print "this is number 1 " + number1.to_s + " | "
      # puts "this is number 2 " + number2.to_s
      number2 += 1
    end
    number1 += 1
  end
end

puts largest_palindrome_for_three_digit()
puts @palidrome