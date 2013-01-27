alphabet = []
for i in 0..9
  alphabet << i
end

@counter = 0

def traverse(so_far, alphabet, indent)
  # print indent + "traverse("
  # print so_far
  # print ", "
  # print alphabet
  # print ")"
  # puts
  isEmpty = true
  for i in 0..alphabet.length-1
    if alphabet[i] >= 0
      isEmpty = false
      item = alphabet[i]
      alphabet[i] = -1
      traverse(so_far + [item], alphabet, indent + "  ")
      alphabet[i] = item
    end
  end
  if isEmpty
    @counter += 1
    if @counter == 1_000_000
      print so_far
      puts
    end
  end
  # print indent + "end traverse"
  # puts
end

traverse([], alphabet, "")

puts @counter