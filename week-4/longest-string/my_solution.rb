# Longest String

# I worked on this challenge by myself.

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  list_of_words.min {|x,y| y.size <=> x.size}
end


# This solution also works using hashes:

# def longest_string(list_of_words)

#   hash = Hash.new

#   list_of_words.each do |x|
#     hash[x] = x.length
#   end

#   longest_length = hash.values.sort[hash.length-1]

#   return hash.key(longest_length)

# end