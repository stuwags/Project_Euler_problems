  number = 100


def sum_comparison(number)
  sum_of_squares = 0
  sum = 0
  for i in 0..number
    puts "break"
    sum_of_squares += (i*i)
    sum += i
  end
  square_of_sum = sum*sum
  puts square_of_sum
  puts sum_of_squares
  puts "The difference between the numbers is " + (square_of_sum - sum_of_squares).to_s
end

sum_comparison(number)