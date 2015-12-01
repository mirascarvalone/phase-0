# Review and Refactor: Pad an Array

# I worked on this challenge by myself.



# First Person's solution I liked
#    What I learned from this solution
# Copy solution here:
# def pad!(array, min_size, value = nil) #destructive
#   if array.size == min_size
#     return array
#   else
#     while min_size > array.size
#       array << value
#     end
#   end
#   return array
# end



# Second Person's solution I liked
#    What I learned from this solution
# Copy solution here:




# My original solution:
def pad!(array, min_size, value = nil) #destructive
  array << value until array.length >= min_size
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  new_array << value until new_array.length >= min_size
  return new_array
end


# My refactored solution:
def pad!(array, min_size, value = nil) #destructive
  array << value until array.length >= min_size
end



# 5. Reflection