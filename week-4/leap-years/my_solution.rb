# Leap Years

# I worked on this challenge with Mo.


# Your Solution Below
def leap_year?(year)
  if year % 4 == 0 and year % 100 != 0
    return true
  elsif year % 4 ==0 and year % 400 == 0
    return true
  else
    return false
  end
end

# In the my_solution.rb file:

# Create a method leap_year? that accepts an integer representing a year as input.

# It should return true if the year input is a leap year and false otherwise.

# For example,

# leap_year?(2000) # => true
# leap_year?(2001) # => false