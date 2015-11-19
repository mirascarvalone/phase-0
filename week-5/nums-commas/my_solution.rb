# Numbers to Commas Solo Challenge

# I spent 4 hours on this challenge.

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
# grab the 3 left-most elements (after the first comma) and add them to a string, adding a comma. repeat this process until all groups of 3 are grabbed.
# last step will be to modify depending if the digit length is in case 2, 3, 4

# 1. Initial Solution

def separate_comma(integer)
  string = integer.to_s
  new_string = ""

  j = string.length/3
  while j > 0
    new_string << string[((-3)*j),3] << ","
    j -= 1
  end

  if string.length % 3 == 0
    return new_string.chomp(",")
  elsif string.length % 3 == 1
    return "#{string[0]}," << new_string.chomp(",")
  elsif string.length % 3 == 2
    return "#{string[0,2]}," << new_string.chomp(",")
  end

end

# 2. Refactored Solution

def separate_comma(integer)

  new_string = integer.to_s.reverse.scan(/.../).join(',').reverse

  if integer.to_s.length % 3 == 0
    return new_string
  elsif integer.to_s.length % 3 == 1
    return "#{integer.to_s[0]}," << new_string
  elsif integer.to_s.length % 3 == 2
    return "#{integer.to_s[0,2]}," << new_string
  end

end


# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
#   I thought about the steps I would go through to add a comma to a number and then tried to write that out in plain English. I knew that I would have to group the integer into strings of length 3, but was not sure initially how to connect those. Once I started coding, I realized that (at least for the way I was setting it up) I would have to break the problem into several cases depending on the existing length of the integer, and how many spaces there were before the first comma.
# Was your pseudocode effective in helping you build a successful initial solution?
#   I found this challenge difficult and my initial pseudocode had to be modified a lot once I actually started coding. I think this is typical however, especially for a beginner. However, the initial idea I had was what I needed to implement, I just had trouble actually figuring out the best way using Ruby.
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
#   The Ruby methods I used were really helpful - I used scan and join as a quicker way to grab digits in the integer 3 at a time and then join them with a comma. I also used the reverse method to get around the fact that we are adding commas starting from the right but all our array indexing starts at the left.
# How did you initially iterate through the data structure?
#   In my initial solution, I iterated through the data structure by grouping the integer 3 digits at a time and adding that to a longer string separated by commas. Then depending on the length of the integer and what bucket it fell in, I added the digits to the left of the first comma manually, if necessary.
# Do you feel your refactored solution is more readable than your initial solution? Why?
#   Definitely - it's much shorter and more readable. I also had older versions that are below that show my initial thought process, which was much more drawn out. I think using scan and join in my refactored solution is much cleaner and also doesn't require manually removing a comma at the end.



# OLD SOLUTIONS (not for peer review)

# Solution 1
# def separate_comma(integer)
#   string = integer.to_s

#   new_array = []

#   if string.length < 4
#     return string

#   elsif string.length % 3 == 0

#     j = string.length/3
#     while j > 0

#       new_string = ""

#       for i in (-3*(j)+0)..(-3*(j)+2)
#         new_array << string[i]
#       end

#       new_array << ","

#       for i in 0..new_array.length-1
#         new_string << new_array[i]
#       end

#     j -= 1
#     end

#   elsif string.length % 3 == 1

#     new_array << string[0]
#     new_array << ","

#     j = string.length/3
#     while j > 0

#       new_string = ""

#       for i in (-3*(j)+0)..(-3*(j)+2)
#         new_array << string[i]
#       end

#       new_array << ","

#       for i in 0..new_array.length-1
#         new_string << new_array[i]
#       end

#     j -= 1
#     end

#   elsif string.length % 3 == 2

#     new_array << string[0]
#     new_array << string[1]
#     new_array << ","

#     j = string.length/3
#     while j > 0

#       new_string = ""

#       for i in (-3*(j)+0)..(-3*(j)+2)
#         new_array << string[i]
#       end

#       new_array << ","

#       for i in 0..new_array.length-1
#         new_string << new_array[i]
#       end

#     j -= 1
#     end

#   end

#   return new_string.chomp(",")

# end


# Solution 2
# def separate_comma(integer)
#   string = integer.to_s

#   if string.length < 4
#     return string

#   elsif string.length % 3 == 0

#     new_string = ""
#     j = string.length/3
#     while j > 0
#       new_string << string[((-3)*j),3] << ","
#       j -= 1
#     end

#   elsif string.length % 3 == 1

#     new_string = "#{string[0]},"
#     j = string.length/3
#     while j > 0
#       new_string << string[((-3)*j),3] << ","
#       j -= 1
#     end

#   elsif string.length % 3 == 2

#     new_string = "#{string[0,2]},"
#     j = string.length/3
#     while j > 0
#       new_string << string[((-3)*j),3] << ","
#       j -= 1
#     end

#   end

#   return new_string.chomp(",")

# end