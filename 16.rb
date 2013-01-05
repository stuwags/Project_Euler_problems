# Step 1. 2^someNumber
def powerNumber(number)
  2**number
end

# Step 2. Chop the fucker up
def chopTheFuckerUp(number)
  sum = 0
  for i in 0..number.to_s.length-1
    sum += number.to_s[i].to_i
    puts sum
  end
end
# Add the chops together
# Have a party

chopTheFuckerUp(powerNumber(15))