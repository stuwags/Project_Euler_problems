# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# # 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

array = [1, 2]; n = 0; p = 1; array_to_big = false; sum = 0
while array_to_big == false
  if array[n] + array[p] < 4000000
    array << array[n] + array[p]
  else
    array_to_big = true; n = 0; p = 0
  end
  n = n + 1; p = p + 1
end

array.delete_if {|number| number%2 != 0}

array.each {|number| sum = number + sum}

print array;puts "The number I want is #{sum}"