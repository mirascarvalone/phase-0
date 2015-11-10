# I worked on this challenge with Mo Amin.


# Your Solution Below

def valid_triangle?(a, b, c)
  if a + b > c and b + c > a and a + c > b
    return true
  else
    false
  end
end