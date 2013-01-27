fact = {}
fact[0] =1
for i in 1..9
  fact[i] = i * fact[i-1]
end

super_sum = 0

for i in 3..999_999_99
  num = i
  sum = 0
  while num != 0
    digit = num%10
    sum += fact[digit]
    num = num/10
  end
  if sum == i
    puts i
    puts super_sum += i
  end
end