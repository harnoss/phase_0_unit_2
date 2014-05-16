# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself

# 2. Pseudocode

# Input: a class initializer that takes a number as input as well as two class methods
# one of them takes a number as input
# Output: 2 methods that can be called for the class and that return true/false depending on the case
# Steps:
# - Create a class that takes a number as an argument
# - Raise an ArgumentError if argument is a String
# - create a class method "guess" that takes a number as an argument that
#   returns "low" if the argument is smaller than the argument that has been passed to the class initializer
#	returns "high" if the argument is bigger than the argument that has been passed to the class initializer
#	returns "correct" otherwise

# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    if answer.is_a?(String)
    	raise ArgumentError.new("Plase choose a number")
    end
    @answer = answer
    @guess = nil
  end
  
def guess(number)
	@guess = number
	if @guess < @answer
		return :low
	elsif @guess > @answer
		return :high
	else
		:correct
	end
end

def solved?
	@answer == @guess ? true : false
end
end



# 4. Refactored Solution
# Seems good to go to me (except for some details). Was thinking about cases instead of ifs, but I feel
# that it doesn't add any value
class GuessingGame
  def initialize(answer)
    if answer.is_a?(String)
    	raise ArgumentError.new("Please choose a number")
    end
    @answer = answer
    @guess = nil
  end
  
def guess(number)
	@guess = number
	if @guess < @answer
		:low
	elsif @guess > @answer
		:high
	else
		:correct
	end
end

def solved?
	@answer == @guess ? true : false
end
end


# 1. DRIVER TESTS GO BELOW THIS LINE
puts GuessingGame.instance_method(:initialize).arity == 1
puts GuessingGame.method_defined?(:guess) == true
puts GuessingGame.instance_method(:guess).arity == 1
game = GuessingGame.new(10)
puts game.guess(100) == :high
puts game.solved? == false
puts game.guess(5) == :low
puts game.guess(20) == :high
puts game.solved? == false
puts game.guess(10) == :correct
puts game.solved? == true


# 5. Reflection 
# Good starter to get a sense of instance variables. Cool to see them
# in action and see that they can be called within all methods of the class