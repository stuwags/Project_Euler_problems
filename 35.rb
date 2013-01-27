#the civ

primes = []
candidates = []

for i in 1..1_000_000
  candidates[i] = true
end

for i in 2..1_000_000
  if candidates[i]
    primes << i
    j = 2
    while j*i < 1_000_000
      candidates[j*i] = false
      j += 1
    end
  end
end

count = 0
for i in 2..1_000_000
  if (candidates[i])
    permuted = i
    all_prime = true
    begin
      permuted = (permuted % 10) * 10 ** (Math.log10(i).to_i) + (permuted / 10)
      all_prime = all_prime && candidates[permuted]
    end while ((permuted != i) && (all_prime))
    if (all_prime)
      puts i
      count += 1
    end
  end
end

puts "There are #{count} circular primes"