# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Dana.

# 0. total Pseudocode
# make sure all pseudocode is commented out!


# Input:Array of numbers, which can be integers or floats (argument)
# Output:Sum of the numbers in the Array (sum)
# Steps to solve the problem: Loop through the array and add each element to the last, keeping a running total sum.


# 1. total initial solution

def total(array)
  n = 0
  sum = 0
  while n < array.length
    sum = sum + array[n]
    n +=1
  end

  return sum
end

# 3. total refactored solution

def total(array)
  array.inject { |sum, n| sum + n}
end

# 4. sentence_maker pseudocode
# Input: An array of strings
# Output: Strings connected by a space with the first word capitalized and the last word followed by a period.

# Steps to solve the problem: Similar to above. Go through all elements in an array, concatenating them with spaces in between (and capitalizing the first letter, adding a period at the end).


# 5. sentence_maker initial solution

def sentence_maker(array)

  sentence = array[0].to_s.capitalize
  n = 1

  while n < array.length
    sentence = sentence + " " + array[n].to_s
    n +=1
  end

  return sentence + "."
end


# 6. sentence_maker refactored solution

def sentence_maker(array)
  sentence = array.join(" ")
  return sentence.capitalize + "."
end