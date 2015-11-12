# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  list_of_words.min {|x,y| x.size <=> y.size}
end

# This solution also works, using hashes:

# def shortest_string(list_of_words)

#   hash = Hash.new

#   list_of_words.each do |x|
#     hash[x] = x.length
#   end

#   shortest_length = hash.values.sort[0]

#   return hash.key(shortest_length)

# end
