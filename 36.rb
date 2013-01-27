def palindrome?(str)
  reversed = str.reverse
  if reversed == str
    true
  else
    false
  end
end

sum = 0
for i in 1..999_999
  binary = i.to_s(2)
  dec = i.to_s(10)
  if (palindrome?(dec) && palindrome?(binary))
    sum += i
  end
end
puts sum