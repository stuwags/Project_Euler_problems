def divisors(n)
  d = [1]
  for i in 2..Math.sqrt(n)
    if n % i == 0
      d << i
      if i != (n/i)
        d << (n/i)
      end
    end
  end
  d
end

def sum_divisors(n)
  divisors(n).inject(:+) #returns sum
end

abund_num = []

for i in 1..28123
  if sum_divisors(i) > i
    abund_num << i
  end
end

possibilities = {}
for i in 0..abund_num.length-1
  for j in i..(abund_num.length-1)
    sum = abund_num[i] + abund_num[j]
    possibilities[sum] = [abund_num[i], abund_num[j]]
  end
end

sum = 0
for i in 0..28123
  if !possibilities.has_key?(i) #if possibilities[i] == nil
    print i, "  ", (sum+i)
    puts
    sum += i
  end
end

puts sum