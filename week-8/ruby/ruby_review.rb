# I worked on this challenge by myself.
# This challenge took me 1 hours.

# Pseudocode
# Write a function to check if a numebr is part of the fibonacci sequence (created starting with 0,1, and then going forward the next # is the sum of the previous 2 #s)

# Make an array of fibonacci #s:
#   Set first two elements of array as 0,1
#   Set every element of the array to equal the sum of the previous 2 elements
# Create a method that checks if inputted # is in the array (use include method)

# Initial Solution

# def is_fibonacci?(num)
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

# end

# # Refactored Solution
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



# SUPER FIZZBUZZ
def super_fizzbuzz(array)
  array.map! {|variable|
    if variable % 15 == 0
      variable = "FizzBuzz"
    elsif variable % 5 == 0
      variable = "Buzz"
    elsif variable % 3 == 0
      variable = "Fizz"
    else
      variable = variable
    end
  }

  return array

end


def super_fizzbuzz(array)
  new_array = []
  array.each do |variable|
    if variable % 15 == 0
      new_array.push "FizzBuzz"
    elsif variable % 5 == 0
      new_array.push "Buzz"
    elsif variable % 3 == 0
      new_array.push "Fizz"
    else
      new_array.push variable
    end
  end

  return new_array

end


# Reflection
# What concepts did you review or learn in this challenge?
#   Above I included the fibonacci challenge and super fizz buzz - both of these challenges gave me more practice with looping, using the .each method, indexing, and ternary operators.
# What is still confusing to you about Ruby?
#   I'm not sure why my fibonacci code doesn't work - I get stuck in some kind of infinite loop.
# What are you going to study to get more prepared for Phase 1?
#   These practice problems are fun and help me get more prepared. At this point, switching back form JavaScript I lost some of the knowledge of certain syntax that I had, so it's useful to get that back this week.