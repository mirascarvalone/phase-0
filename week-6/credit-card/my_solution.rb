# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Mo.
# I spent 1 hour on this challenge.

# Pseudocode

# Input: 16 digit number
# Output: true or false
# Steps:
# 0. define initialize method with 16 digit #
#   if # is not 16 digits, show ArgumentError
# 1. define function to split up 16 digit number
#   convert integer to string for each #
#   return an array of each #
# 2. define function to double every other number in our array, starting with 2nd #
#   cycle through every element of array, convert to integer
#   multiply element by 2 for every other element, starting with 2nd
#   return new array
# 3. define function to separate every 2 digit #
#   convert elements of array to string
#   iterate through array, check if # is 2 digits
#     IF digit = 2, split string into 1 digit strings
#   convert array elements into integers, return array of integers
# 4. define check_card method
#   sum all elements of the array
#   IF sum is multiple of ten, return true
#   ELSE false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(number)
    if number.to_s.length != 16
      raise ArgumentError.new("Please enter a 16 digit number.")
    end
    @card_number = number
  end

  def split_number
    @card_number.to_s.split("").collect{|number| number.to_i}
  end

  def double_numbers
    split_number.collect.with_index do |number, index|
      if index.even?
        number*2
      else
        number
      end
    end
  end

  def split_double_numbers
    array_of_split_numbers = double_numbers.collect{|number| number.to_s}.collect do |number|
      if number.length > 1
        number.split("")
      else
        number
      end
    end
    array_of_split_numbers.flatten.collect{|number| number.to_i}
  end


  def check_card
    running_sum = 0
    split_double_numbers.each do |number|
      running_sum += number
    end
      if running_sum % 10 == 0
        return true
      else
        return false
      end
  end

end

# # Driver Code
# test = CreditCard.new(5234123412341234)
# p test.split_number
# p test.double_numbers
# p test.split_double_numbers
# p test.check_card




# Refactored Solution
class CreditCard
  def initialize(number)
    if number.to_s.length != 16
      raise ArgumentError.new("Please enter a 16 digit number.")
    end
    @card_number = number
  end

  def split_number
    @card_number.to_s.split("").collect{|number| number.to_i}
  end

  def double_numbers
    # used ternary operator to clean up code
    split_number.collect.with_index do |number, index|
      index.even? ? number*2 : number
    end
  end

  def split_double_numbers
    # used ternary operator to clean up code
    array_of_split_numbers = double_numbers.collect{|number| number.to_s}.collect do |number|
    number.length > 1 ? number.split("") : number
    end

    array_of_split_numbers.flatten.collect{|number| number.to_i}
  end


  def check_card
    # used reduce method to add all elements in an array. added ternary operator to condense this code into one line
    split_double_numbers.reduce(:+) % 10 == 0 ? true : false
  end

end

# Driver Code
test = CreditCard.new(5234123412341234)
p test.split_number
p test.double_numbers
p test.split_double_numbers
p test.check_card

# Reflection
# What was the most difficult part of this challenge for you and your pair?
#   We had a pretty easy time with this challenge and I think our pseudocode helped a lot. One of the more difficult/interesting parts was thinking about the design of our methods, and where each ended and the next began.
# What new methods did you find to help you when you refactored?
#   The reduce method was great and seems useful for the future (it adds all the elements of an array). Also, I had only seen flatten once before but that was very useful here since we eventually wanted to add each array element together.
# What concepts or learnings were you able to solidify in this challenge?
#   It was good practice to get used to calling other methods within a method. My first instinct was to define variables at the end of every method and call those, but my pair suggested this way and it was actually much cleaner. Also I hadn't used the collect method as much before, but it was extremely useful for iterating over arrays as we were doing here.







# Reflection
