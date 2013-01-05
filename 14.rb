def collatzRun(number)
  if number % 2 == 0
    number = number/2
  else
    number = 3 * number + 1
  end
  return number
end


maxLength = -1
maxNum = -1
for i in 1..1_000_000
  if ((i % 1024) == 0)
    puts "At #{i}"
  end
  c = collatzRun(i)
  length = 2
  while c != 1
    c = collatzRun(c)
    length += 1
  end
  if (length > maxLength)
    maxLength = length
    maxNum = i
  end
end

puts "The max number is #{maxNum} which has a length of #{maxLength}"
