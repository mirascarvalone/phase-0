# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? an array of either strings or numbers
# What is the output? (i.e. What should the code return?) an array of the most frequent values
# What are the steps needed to solve the problem?
# 1. loop through array, creating hash with default value zero
# 2. add 1 to value each time key appears
# 3. now we have a hash mapping each element of the array to its count
# 4. sort count values to find maximum
# 5. Find all keys with value equal to maximum above
# 6. push these keys to an array


# 1. Initial Solution
def mode(array)
  count_hash = Hash.new(0)

  array.each do |element|
    count_hash[element] += 1
  end

  mode = count_hash.values.sort[count_hash.length-1]

  answer_hash = count_hash.select {|x,y| y == mode}
  answer_array = []

  answer_hash.each_key do |key|
    answer_array << key
  end

  return answer_array
end

# 3. Refactored Solution
def mode(array)
  count_hash = Hash.new(0)

  array.each {|element| count_hash[element] +=1}

  count_hash.select {|x,y| y == count_hash.values.max}.keys

end

# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
#   We used a hash and an array in our solution. The hash was useful to be able to map the elements of the input array to their frequency counts.
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
#   I felt our pseudocode was very straightforward and easy for us to understand.
# What issues/successes did you run into when translating your pseudocode to code?
#   Our pseudocode outlined exactly what steps we needed to take to implement our code. We arrived at a solution pretty quickly, but I would say most difficulties we encountered were when our attempts to do something produced an array instead of a hash or vice versa. Also, a few of our attempts only returned one of the most frequently listed items, and not all of them.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#   We used .each several times to iterate through our hash. We also used the .select, .each_key, .values, and .sort methods. In refractoring, we discovered a simpler way to find the max frequency by using .values.max and then .keys after that.