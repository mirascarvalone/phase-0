# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode
# Create class that accepts bingo board and returns boolean with celebratory message
# Initialize method takes bingo board (array) as argument
# FOR i in 0..board.length-1
#   FOR board[i].each do |array|
      # IF array[j] = 'x'
      #   counter+=1
      # end
  # FOR j in 0..board.length-1
    # IF board
    # board[0][0], board[0][1], board[0][2], board[0][3], board[0][4]
# In this challenge, you'll want to create a class that accepts a two dimensional array (bingo board) and returns a boolean value and a celebratory statement based on the presence of bingo win conditions. Use the sample boards to create tests for your methods to check for bingos. When a bingo is found, the program should print "BINGO!" to the console.

# Initialize method takes bingo board (array) as argument
# FOR i in 0..board.length-1
#   FOR board[i].each do |array|
#       IF array[j] = 'x'
#         counter+=1
#       end


# sample boards

# horizontal = [[47, 44, 71, 8, 88],
#               ['x', 'x', 'x', 'x', 'x'],
#               [83, 85, 97, 89, 57],
#               [25, 31, 96, 68, 51],
#               [75, 70, 54, 80, 83]]

# vertical = [[47, 44, 71, 'x', 88],
#             [22, 69, 75, 'x', 73],
#             [83, 85, 97, 'x', 57],
#             [25, 31, 96, 'x', 51],
#             [75, 70, 54, 'x', 83]]


# right_to_left = [['x', 44, 71, 8, 88],
#                  [22, 'x', 75, 65, 73],
#                  [83, 85, 'x', 89, 57],
#                  [25, 31, 96, 'x', 51],
#                  [75, 70, 54, 80, 'x']]


# left_to_right = [[47, 44, 71, 8, 'x'],
#                   [22, 69, 75, 'x', 73],
#                   [83, 85, 'x', 89, 57],
#                   [25, 'x', 96, 68, 51],
#                   ['x', 70, 54, 80, 83]]




# Initial Solution
class BingoScorer
  def initialize(board)
    @board = board
  end

  def print
    for i in 0..@board.length-1
      counter = 0
      @board[i].each do |x|
        if x == 'x'
          counter +=1
        end
      end
      if counter == 5
        puts "BINGO"
      end

      counter = 0
      @board.each do |x|
        if x[i] == 'x'
          counter +=1
          # puts counter
        end
      end
      if counter == 5
        puts "BINGO"
      end
    end

    counter = 0
    for i in 0..@board.length-1
      if @board[i][i] == 'x'
        counter +=1
      end
    end
    if counter == 5
      puts "BINGO"
    end

    counter = 0
    for i in 0..@board.length-1
      if @board[i][@board.length-1-i] == 'x'
        counter +=1
      end
    end
    if counter == 5
      puts "BINGO"
    end

  end

end

test = BingoScorer.new([[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]])
test.print()


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:


# Reflection