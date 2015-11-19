# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1 hour on this challenge.

# In this challenge you'll want to implement a basic Die class which can be initialized with some number of sides. You can then roll the die, which will return a random number. It should work like this:

# If we pass Die.new a number less than 1, we should raise an ArgumentError. This is done using the raise keyword. See the ArgumentError documentation (Links to an external site.) for how to do this.

# die = Die.new(6) #This creates a new die object with 6 sides
# die.sides # returns 6
# die.roll # returns a random number between 1 and 6


# 0. Pseudocode

# Input: # sides
# Output: create a class where if we call certain methods defined in the class, we can output the # sides on a die, and a random # as a roll
# Steps: Define 3 methods within the class. The first will initialize the die class (with an argument error when necessary), the second will return the # sides, and the third will give us a random number between 1 and the # sides.


# 1. Initial Solution

class Die
  def initialize(sides)
    unless sides >= 1
      raise ArgumentError.new("The die needs to have at least one side.")
    end
    @sides = sides

  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end

# 3. Refactored Solution
class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("The die needs to have at least one side.")
    end
    @sides = sides

  end

  def sides
    @sides
  end

  def roll
    1 + rand(@sides)
  end
end

# 4. Reflection

# What is an ArgumentError and why would you use one?
#   An ArgumentError tells you if there is something wrong with the arguments inputted into a method, like if they are too small/large, or there are too many/few of them.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#   I had already used the rand method so that wasn't new. The main challenge was thinking about how classes work, and for me, it took a few attempts to understand that I needed to use @ to call an instance variable for sides.
# What is a Ruby class?
#   A class is an instance of an object, meaning it has a set of characteristics and methods that can be called repeatedly. The example given frequently is a blueprint for a house, meaning that instances of that class (or objects), will inherit certain methods and characteristics, in the way you could make multiple houses from one blueprint and they would have similar characteristics.
# Why would you use a Ruby class?
#   We would use a Ruby class to avoid repeating chunks of code. If we know we want to create many objects that function similarly, we can create a class and then create many instances of that class without repeating that code over and over.
# What is the difference between a local variable and an instance variable?
#   A local variable is defined in a method and can't be used outside a method. An instance variable is available across all methods within a particular class. Above, @sides is an instance variable.
# Where can an instance variable be used?
#   An instance variable can be used in other methods that are part of the same class.