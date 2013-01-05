i = 1
triangle = 0
done = false
while !done
  triangle = triangle + i
  factors = 0
  for j in 1..(Math.sqrt(triangle))
    if j*j == triangle
      factors += 1
    elsif triangle % j == 0
      factors += 2
    end
  end
  if factors >= 500
    done = true
    puts triangle.to_s + " This is triangles"
    puts factors.to_s + " This is factors"
  end
i += 1
end