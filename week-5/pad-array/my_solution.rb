# Pad an Array

# I worked on this challenge with Jenna.

# I spent 2.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# array: given group of values
# min_size: minimum amount of values in list
# value = nil: if length of array is less than minimum, add value to array until it reaches minimum

# What is the output? (i.e. What should the code return?)
# pad! returns a new list, which will either be the input array (if it's longer than input min_size), or the input array with input value added until it reaches min_size
# pad print out the same output as above, but does not permanently modify any of the inputs

# What are the steps needed to solve the problem?

# 2 scenarios:
# 1. length of array < min_size
#   add value as new element of array
#   repeat this process until length = min_size
# 2. length >= min_size
#   return array



# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    while array.length < min_size
      array.push(value)
    end
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  if new_array.length >= min_size
    return new_array
  else
    while new_array.length < min_size
      new_array.push(value)
    end
    return new_array
  end
end



# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  array << value until array.length >= min_size
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  new_array << value until new_array.length >= min_size
  return new_array
end


# 4. Reflection
# Were you successful in breaking the problem down into small steps?
#   Yes, we were successful in breaking down the problem. Our pseudocode was pretty vague as we were trying to avoid any code specific language.
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#   We knew that we needed to repeatedly add the value to the end of the array until it reached a certain length, but it took us a few attempts to determine exactly how we would do that. We also both felt that psuedocode can be difficult in that we are trying to be vague and not use code-specific language, but then once we start coding there may not be a ton of structure in place.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Our initial solution was not successful, and we got stuck for a while. Our issue was that in the non-destructure method, we were defining another array and setting it equal to the original array, which did not make it a different object in Ruby. With some research, we foudn the .dup method and solved our problems.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# We googled a bit and saw some methods that could help, but had trouble getting some of them to work (like fill). In the end, we simplified our solution by rearranging the control flow.
# How readable is your solution? Did you and your pair choose descriptive variable names?
# I think our solution is readable. We didn't have to create many new variable names.
# What is the difference between destructive and non-destructive methods in your own words?
# Destructive methods alter the inputs after they are passed through the method, and non-destructive methods do not alter the inputs permanently.