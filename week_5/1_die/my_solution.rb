# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself

# 2. Pseudocode

# Input: a class creator that takes one argument (sides) as input
# Output: a class that can be initiated and when called returns either 
# its property (sides) or a random number from 1 to the number of sides
# Steps: 
# - Initialize a class that takes a number as an argument
# - Return an argumen error if the number is <1
# - Create a method that returns the argument 
# - Create a method that returns a random number between 1 and the argument number


# 3. Initial Solution

class Die
  def initialize(sides)
    unless sides > 0
    	raise ArgumentError.new("Enter a number greater than 0")
    end
    @sides = sides
  end
  
  def sides
    return @sides
  end
  
  def roll
    return 1 + rand(6)
  end
end


# 4. Refactored Solution
class Die
  def initialize(sides)
    unless sides > 0
    	raise ArgumentError.new("Enter a number greater than 0")
    end
    @sides = sides
  end
  
  def sides
    @sides
  end
  
  def roll
    1 + rand(sides)
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE
puts Die.instance_method(:initialize).arity == 1
puts Die.new(0) == ArgumentError
puts Die.new(-1) == ArgumentError
puts Die.instance_method(:sides).arity == 0
die = Die.new(20)
puts die.sides == 20


# 5. Reflection 
# Great start into classes. I have seen and done that exercise
# before so I could do it fairly quickly. I love the argumentError 
# as a way to control for arguments. No need for further research
# it was explained pretty well.