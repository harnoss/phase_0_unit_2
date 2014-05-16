# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: a class creator that takes one argument (labels) as input
# Output: a class that can be initiated and when called returns either 
# its property length (labels) or a random element from the labels array
# Steps: 
# - Initialize a class that takes an array as an argument
# - Return an argumen error if the array is empty
# - Create a method that returns the length of the array 
# - Create a method that returns a random element of the array


# 3. Initial Solution

class Die
  def initialize(labels)
  	unless labels.empty? == false
  		raise ArgumentError.new("You should pass an array as argument")
  	end
  	@labels = labels
  	@sides = labels.length
  end

  def sides
  	@sides
  end

  def roll
  	@labels.sample
  end
end

# 4. Refactored Solution
# Seems good to go to me. Can be quiet easily understood by user and processed by computer
# Two small adjustments though: If instead of unless and no need for @labels:
class Die
  def initialize(labels)
  	if labels.empty?
  		raise ArgumentError.new("You should pass an array as argument")
  	end
  	@sides = labels
  end

  def sides
  	@sides.length
  end

  def roll
  	@sides.sample
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
puts Die.instance_method(:initialize).arity == 1
puts Die.new([]) == ArgumentError
puts Die.instance_method(:sides).arity == 0
  
def test()
	length = 1 + rand(100)
	sides = Array.new(length) { 'A' }
	die = Die.new(sides)
	puts die.sides == length
end
test

puts Die.instance_method(:roll).arity == 0


# 5. Reflection 
# All good and good to go. Solifying skills from first
# erxercise. Could also refactor a bit which I liked!