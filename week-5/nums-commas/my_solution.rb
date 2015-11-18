# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Positive integer
# What is the output? (i.e. What should the code return?) Comma-separated integer as a string (comma appearing every 3 places starting from the right)
# What are the steps needed to solve the problem?

# convert integer to string, then we have four cases:
# 1. if string is 3 digits or fewer, return original string
# 2. string is > 3 digits, and length % 3 == 0 (so there will be 3 digits on the left of the left-most comma)
# 3. string is > 3 digits, and length % 3 == 1 (so there will be 1 digit on the left of the left-most comma)
# 4. string is > 3 digits, and length % 3 == 2 (so there will be 2 digits on the left of the left-most comma)
# For cases 2-4, I will do the following:
#   loop through the 3 digits on the right, push them to an array, then put them back into a string of length 3 (there is probably an easier way to do this, I will investigate when refractoring)
#   repeat this process to go through the next 3 digits in the string, and push them to the same array, adding a comma in between

# 1. Initial Solution

def separate_comma(integer)
  string = integer.to_s

  new_array = []

  if string.length < 4
    return string

  elsif string.length % 3 == 0

    j = string.length/3
    while j > 0

      new_string = ""

      for i in (-3*(j)+0)..(-3*(j)+2)
        new_array << string[i]
      end

      new_array << ","

      for i in 0..new_array.length-1
        new_string << new_array[i]
      end

    j -= 1
    end

  elsif string.length % 3 == 1

    new_array << string[0]
    new_array << ","

    j = string.length/3
    while j > 0

      new_string = ""

      for i in (-3*(j)+0)..(-3*(j)+2)
        new_array << string[i]
      end

      new_array << ","

      for i in 0..new_array.length-1
        new_string << new_array[i]
      end

    j -= 1
    end

  elsif string.length % 3 == 2

    new_array << string[0]
    new_array << string[1]
    new_array << ","

    j = string.length/3
    while j > 0

      new_string = ""

      for i in (-3*(j)+0)..(-3*(j)+2)
        new_array << string[i]
      end

      new_array << ","

      for i in 0..new_array.length-1
        new_string << new_array[i]
      end

    j -= 1
    end

  end

  return new_string.chomp(",")

end

# 2. Refactored Solution




# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
#   I thought about the steps I would go through to add a comma to a number and then tried to write that out in plain English. I knew that I would have to group the integer into strings of length 3, but was not sure initially how to connect those. Once I started coding, I realized that (at least for the way I was setting it up) I would have to break the problem into several cases depending on the existing length of the integer, and how many spaces there were before the first comma.
# Was your pseudocode effective in helping you build a successful initial solution?
#   I found this challenge difficult and my initial pseudocode had to be modified a lot once I actually started coding. I think this is typical however, especially for a beginner. However, the initial idea I had was what I needed to implement, I just had trouble actually figuring out the best way using Ruby.
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# How did you initially iterate through the data structure?
#   In my initial solution, I created several "if" statements to separate the strings where length <=3, length % 3 == 0, length % 3 == 1, and length % 3 == 2. Then I iterated through each string starting on the right to add groups of 3 integers into an array. I saved that array and added a comma and repeated this process to get through the entire string, with different handling of the first few integers in the string (to the left of the first comma) depending on the "if" statement group we were in.
# Do you feel your refactored solution is more readable than your initial solution? Why?