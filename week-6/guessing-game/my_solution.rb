# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# Pseudocode

# Input: integer as correct answer
# Output: guessing game class that takes guess as input. 2 additional methods: 1 returns high/low/correct, the other determines if the game is solved
# Steps: define three methods - initialize, return high/low, and determine if game is solved


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
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
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    if guess < @answer
      @solved = false
      :low
    elsif guess > @answer
      @solved = false
      :high
    else
      @solved = true
      :correct
    end
  end

  def solved?
    @solved == true ? true : false
  end

end

# Reflection


# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#   In this exercise, we used instance variables and methods to make a simple gusesing game. The instance variables repesented the correct answer and whether the game was solved. The methods used the inputted guess to see if it was correct or not. We've also used variables and methods to model the characteristics of a die class.
# When should you use instance variables? What do they do for you?
#   Instance variables allow us to reference the variables repeatedly in other methods within the class. This is useful to avoid repetitive code.
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
#   Flow control allows us to account for different scenarios (in this case, guesses that are too high/low/correct). In my refactoring, I hadded ternary operators to make some of it cleaner.
#   The one part I found tricky in this challenge was combining the return of high/low/correct with the solved method. It took me a little while to realize exactly where to change solved to true/false within my guess method, since that was integral to making the solved method work right. The spec code helped me figure out that I wasn't account for the use case where a user has a correct guess and then an incorrect one.
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
#   Symbols are faster for Ruby to process. I'm not sure why we need them here exactly.