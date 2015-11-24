# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


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



# Refactored Solution








# Reflection
