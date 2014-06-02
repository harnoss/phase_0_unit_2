# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself

$boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# Create a method that takes two arguments: board (as an array of array), and a range of arrays (coords)
# For each of the arrays (coords) take the first and last element and pass it to the board in the order (array of arrays) 
# Join the result with "" and turn it into a string


# Initial Solution
def create_word(board, *coords)
	coords.map { |coord| board[coord.first][coord.last]}.join("")
end

# Refactored Solution
# -

# DRIVER TESTS GO BELOW THIS LINE
puts create_word($boggle_board, [2,1], [1,1], [1,2], [0,3]) == "code"
puts create_word($boggle_board, [0,1], [0,2], [1,2]) == "rad"

# Reflection 
# Very cool thing, still not 100% sure how map works and will do more
# research on it. Seems like a pretty powerful method that i have seen
# in many different contexts so far. It seemed pretty similar to collect

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Initial Solution
def get_row(row)
    $boggle_board[row]
end


# Refactored Solution
# Seems good to go!

# DRIVER TESTS GO BELOW THIS LINE
puts get_row(1) ==  ["i", "o", "d", "t"]

# Reflection 
# Based on part 1 that seemed easy. No major things to reflect on here for me


<<<<<<< HEAD
#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# Create a method that takes a number as an argument
# For each element withing the boggle_board return the value at index number equal to the argument
# Return an array of the results

# Initial Solution

def get_col(col)
  answer =[]
  $boggle_board.each {|row| answer.push(row[col])}
  return answer
end

# Refactored Solution
def get_col(col)
$boggle_board.transpose[col].to_a
end

# DRIVER TESTS GO BELOW THIS LINE
puts get_col(1) ==  ["r", "o", "c", "a"]
puts $boggle_board[0][1] == "r"   
puts $boggle_board[2][1] == "c" 
puts $boggle_board[3][3] == "e" 
puts $boggle_board[2][3] != "x" 

# Reflection 
# I tried and failed with while i = 0...looping and then I went on .each
# Worked out well then, no need for extensive research
# I did find .transpose on ruby docs though, pretty impressive thing
# So i used that one for refactoring
=======
>>>>>>> upstream/master
