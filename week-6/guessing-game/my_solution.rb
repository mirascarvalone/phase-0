# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: correct answer
# Output: guessing game class that takes guess as input. 2 additional methods: 1 returns high/low/correct, the other determines if the game is solved
# Steps: define three methods - initialize, return high/low, and determine if game is solved


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    # @solved = false
  end

  def guess(guess)
    @last_guess = guess
    if guess < @answer
      @solved = false
      return :low
    elsif guess > @answer
      @solved = false
      return :high
    else
      @solved = true
      return :correct
    end
  end

  def solved?
    if @solved == true
      return true
    else
      return false
    end
  end

end




# Refactored Solution






# Reflection
