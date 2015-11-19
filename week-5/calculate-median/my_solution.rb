# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input? array
# What is the output? (i.e. What should the code return?) median (middle number)
# What are the steps needed to solve the problem? first, sort the array. then if it's an even numbered length, take the middle two numbers and average them. otherwise take the middle number (length/2)


# 1. Initial Solution
def median(array)
  sorted = array.sort

  if sorted.length % 2 ==0
    (sorted[(sorted.length/2)-1] + sorted[(sorted.length/2)])/2.to_f
  else
    sorted[sorted.length/2]
  end
end

array = [1,2,3,4,5,6]

# 3. Refactored Solution



# 4. Reflection