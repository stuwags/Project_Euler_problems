found = false
i = 2
numbers = []
while found == false
  sum = 0
  for j in 0..i.to_s.length-1
    sum += i.to_s[j].to_i**5
  end
  if sum == i
    puts "The number we want is #{i}"
    numbers << i
    i += 1
  else
    i += 1
  end
  if i % 10000 == 0
    puts i
  end
  if i > 999_999
    found = true
    print numbers
    puts numbers.inject(:+)
  end
end

9^5 + 9^5 + 8^5 + 6^5 +