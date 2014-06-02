# U2.W6: Create a BoggleBoard Class

# I worked on this challenge by myself

# 2. Pseudocode
#Create a method that can be called on an array of string arrays
#The method should return either only one element (row) or every other character of each element


# 3. Initial Solution
class BoggleBoard
 
  #your code here
  def initialize(dice_grid)
  	@dice_grid = dice_grid
  end

def create_word(*coords)
    coords.map { |coord| @dice_grid[coord.first][coord.last]}.join("")
end

 def get_row(row)
 	@dice_grid[row]
 	@dice_grid[row].join()
 end

 def get_col(col)
 	@dice_grid.transpose[col].to_a
 	@dice_grid.transpose[col].to_a.join()
 end

end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 
boggle_board.create_word([1,2],[1,1],[2,1],[3,2])
boggle_board.get_col(1)

#Then, write methods for #get_row and #get_col. Can you interact with the 
#boggle_board object and get the values you expect? Now print out all the 
#rows and columns of the board as strings. You should end up with 8 four 
#letter words. Are there any real words shown? Add your total output as a comment in your gist.

columns = dice_grid.each_index do |i| boggle_board.get_col(i) end
rows = dice_grid.each_index do |i| boggle_board.get_row(i) end
puts columns.join("").scan(/.{1,4}/)
puts rows.join("").scan(/.{1,4}/)



# 4. Refactored Solution

# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# Now write some driver code to access an individual coordinate in your 
#boggle_board object. Make this as simple as possible. Can you access the "k" character at row 3 column 2?

def assert
	raise "Error!" unless yield
end

assert{boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock"}
assert{boggle_board.get_row(0) == "brae"}
assert{boggle_board.get_col(0) == "biet"}
assert{boggle_board.create_word([3, 2]) == "k"}


# 5. Reflection 
# Very good exercise to solidify my knowledge on classes and ruby enumarables.
# No big issues when implementing the code.