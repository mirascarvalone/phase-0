# Reverse Words


# I worked on this challenge by myself.
# This challenge took me .5 hours.

# Pseudocode
# Split sentence into array of words
# iterate through array, reverse each word
# push those new strings into a new array


# Initial Solution
# def reverse_words(sentence)
#   new_sentence = ""
#   sentence_words = sentence.split(" ")
#   sentence_words.each do |x|
#     new_sentence += x.reverse + " "
#   end

#   return new_sentence[0..new_sentence.length-2]
# end

# Refactored Solution
def reverse_words(sentence)
  sentence.split(" ").map! { |x|
    x.reverse
  }.join(" ")
end

# Reflection