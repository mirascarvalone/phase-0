# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# Pseudocode

# Input: labels of die (array of strings)
# Output: die class that has a number of sides and can output a random side as a roll
# Steps: create 3 methods - one to initialize (gives error if not enough sides), one to set # sides equal to # labels, one to give random side as roll


# Initial Solution

class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("The die needs to have at least one side.")
    end
    @labels = labels
  end

  def sides
    @sides = @labels.length
  end

  def roll
    @labels.shuffle[0]
  end
end


# DRIVER CODE
# die = Die.new(["A","B","C","D"])
# p die.sides
# p die.roll



# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
#   The logic was not much different, but here we had strings on the die instead of integers. This changed the syntax for returning a random side, but luckily I was familiar with the shuffle method.
# What does this exercise teach you about making code that is easily changeable or modifiable?
#   This exercise showed that it was easy to adapt our old code to do something similar.
# What new methods did you learn when working on this challenge, if any?
#   Luckily I was already familiar with the shuffle method (I had used it to make accountability groups). That made this process a lot easier.
# What concepts about classes were you able to solidify in this challenge?
#   In general it was good practice to get more used to the workflow of creating a class and defining methods inside.