# U2.W6: Testing Assert Statements

# I worked on this challenge by myself


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
#Test if name is equal to "bettysue"
#If true yield true
#If false yield "Assertion failed"


# 3. Copy your selected challenge here

$boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]

def get_col(col)
$boggle_board.transpose[col].to_a
end

# DRIVER TESTS GO BELOW THIS LINE
puts get_col(1) ==  ["r", "o", "c", "a"]
puts $boggle_board[0][1] == "r"   
puts $boggle_board[2][1] == "c" 
puts $boggle_board[3][3] == "e" 
puts $boggle_board[2][3] != "x" 


# 4. Convert your driver test code from that challenge into Assert Statements

def assert
	raise "Assertion failed!" unless yield
end

assert {get_col(1) == ["r", "o", "c", "a"]}
assert {$boggle_board[0][1] == "r" }
assert {$boggle_board[2][1] == "c" }
assert {$boggle_board[3][3] == "e" }
assert {$boggle_board[2][3] != "x" }

# 5. Reflection
# I don't quiet see the value in replacing the driver code by
# assert statements but i gues this will become more apparent once
# code becomes more complex. Good review of blocks and yield statements
# for me.