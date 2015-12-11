
# Numbers to English Words


# I worked on this challenge by myself.
# This challenge took me .5 hours.


# Pseudocode
# IF integer is 1 digit, map each # individually to its english spelling
# ELSE
  # map first digit to individual english spelling, add above mapping as second digit


# Initial Solution
def in_words(num)
  ones_array = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  tens_array = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  if num <= 19
    return ones_array[num]
  else
    return tens_array[num.to_s[0].to_i-2] + " " + ones_array[num.to_s[1].to_i]
  end
end

for i in 1..99
  puts in_words(i)
end

# Refactored Solution
def in_words(num)
  ones_array = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fifteen"]
  tens_array = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

  if num <= 12
    ones_array[num]
  elsif num < 20
    if num == 13
      ones_array[13]
    elsif num == 15
      ones_array[14]
    else
      ones_array[num.to_s[1].to_i] + "teen"
    end
  else
    tens_array[num.to_s[0].to_i-2] + " " + ones_array[num.to_s[1].to_i]
  end
end

for i in 1..99
  puts in_words(i)
end


# Reflection