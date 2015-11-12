# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  sorted = list_of_integers.sort

  array = []

  for i in 0..sorted.length-1
    if sorted[i] >= lower_bound && sorted[i] <= upper_bound
      array.push sorted[i]
    end
  end

  return array.length

end
