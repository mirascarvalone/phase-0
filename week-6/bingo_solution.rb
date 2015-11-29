# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 2 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Choose random letter from array [B, I, N, G, O]
  # Choose random number from 1-100 using rand method

# Check the called column for the number called.
  #if B is called, iterate through array 0 for # called
  #if I is called, iterate through array 1 for # called
  #if N is called, iterate through array 2 for # called
  #if G is called, iterate through array 3 for # called
  #if O is called, iterate through array 4 for # called

# If the number is in the column, replace with an 'x'
  #for array[i] that contains called #, re-define it as X

# Display a column to the console
  #iterate through array 0 - 4 printing out array[i] for chosen i (column)

# Display the board to the console (prettily)
  #iterate through big array to print out each line using puts so it has a line after and comma between

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call_bingo
#     bingo_array = ["B","I","N","G","O"]
#     p @letter = bingo_array.shuffle[0]
#     p @number = 1+rand(99)
#   end

#   def check_column
#     case @letter
#       when "B"
#         @bingo_board.each do |array|
#           array[0] = "X" if array[0] == @number
#         end
#       when "I"
#         @bingo_board.each do |array|
#           array[1] = "X" if array[1] == @number
#         end
#       when "N"
#         @bingo_board.each do |array|
#           array[2] = "X" if array[2] == @number
#         end
#       when "G"
#         @bingo_board.each do |array|
#           array[3] = "X" if array[3] == @number
#         end
#       when "O"
#         @bingo_board.each do |array|
#           array[4] = "X" if array[4] == @number
#         end
#     end
#   end

#   def print_board
#     for i in 0..@bingo_board.length-1
#       print "
#       "
#       print @bingo_board[i]
#     end
#     print "
#       "
#   end

# end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call_bingo
    @bingo_letters = "BINGO".split("")
    p @letter = @bingo_letters.shuffle[0]
    p @number = 1+rand(99)
    p @bingo_letters
  end

  def check_column
    @bingo_board.each do |row|
      row[@bingo_letters.index(@letter)] = "X" if row[@bingo_letters.index(@letter)] == @number
    end
  end

  def print_board
    @bingo_board.each do |row|
      puts row.join(",")
    end
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
        # B    I   N   G   O
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

# new_game = BingoBoard.new(board)
# new_game.call_bingo
# new_game.check_column
# new_game.print_board


# OPTIONAL
# The bingo board given is just populated with random numbers from 1 - 100. However, true bingo boards are constructed a bit differently. Traditionally the pattern is like this: "B" (numbers 1–15), "I" (numbers 16–30), "N" (numbers 31–45), "G" (numbers 46–60), and "O" (numbers 61–75) with a free space in the middle.

# Create a method that creates a legal bingo board.
def create_board
  board_rows = [[],[],[],[],[]]
  board_rows.each do |row|
    row[0] =rand(1..15)
    row[1] =rand(16..30)
    row[2] =rand(31..45)
    row[3] =rand(46..60)
    row[4] =rand(61..75)
    print row
    print "
    "
  end
end

create_board

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
#   I think the pseudocoding was made a lot easier with the prompts we were given. I think it would have been harder if there were no direction and I had to figure out exactly what methods to create.
# What are the benefits of using a class for this challenge?
#   We were able to use instance variables and reference them in our different methods.
# How can you access coordinates in a nested array?
#   outter_array[inner_array coordinate][index of next most inner_array]   etc...
# What methods did you use to access and modify the array?
#   I used .each and .index heavily.
# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
#   I knew the index method before but it was important to my refactoring. The index method tells us what index/position a particular value is within an array. So you would write array.index(value) - this helped me figure out where in each row array to look for the number depending on which letter of BINGO was chosen.
# How did you determine what should be an instance variable versus a local variable?
#   I pretty much only used instance variables since we wanted to be able to reference the board, the initial letter and value chosen, and the BINGO letters elsewhere.
# What do you feel is most improved in your refactored solution?
#   I was able to remove the manual mapping of B to the first column, I to the second, and so forth.