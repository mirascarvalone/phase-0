# I worked on this challenge by myself.
# This challenge took me [#] hours.

# Pseudocode
# Write a function to check if a numebr is part of the fibonacci sequence (created starting with 0,1, and then going forward the next # is the sum of the previous 2 #s)

# Make an array of fibonacci #s:
#   Set first two elements of array as 0,1
#   Set every element of the array to equal the sum of the previous 2 elements
# Create a method that checks if inputted # is in the array (use include method)

# Initial Solution

def is_fibonacci?(num)
  fibonacci_array = [0,1]
  for i in 2..1000
    fibonacci_array[i] = fibonacci_array[i-1] + fibonacci_array[i-2]
    i +=1
  end
  if fibonacci_array.include?(num)
    true
  else
    false
  end

end

# Refactored Solution
def is_fibonacci?(num)
  fibonacci_array = [0,1]
  for i in 2..1000
    fibonacci_array[i] = fibonacci_array[i-1] + fibonacci_array[i-2]
    i +=1
  end
  fibonacci_array.include?(num) ? true : false
end



# Reflection

# Why doesn't this work? RSpec just runs forever

# def is_fibonacci?(num)
#   fibonacci_array = [0,1]

#   i = 2
#   while i < num
#     fibonacci_array[i] = fibonacci_array[i-1] + fibonacci_array[i-2]
#     i +=1
#   end

#   if fibonacci_array.include?(num)
#     puts true
#   else
#     puts false
#   end
# end

# is_fibonacci?(7)
# is_fibonacci?(1)