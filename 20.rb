# Used a recursive function and inject

def factorial(number)
  if number > 1
    return number * factorial(number-1)
  else
    return 1
  end
end

 puts factorial(100).to_s.split(//).inject(0) { |result, element| result + element.to_i }