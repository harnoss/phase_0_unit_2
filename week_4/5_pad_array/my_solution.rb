# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# Create a class for Array
# Create a method that takes an integer and an integer or string ("pad value") as argument
# gap = array length - integer
# i = array length
# until i = integer
# add an additional element to the array at the last position equal to the pad value
# if integer <= array length just return the array

# 2. Initial Solution

class Array

def pad!(integer, pad_value = nil)
	i = self.length
	until i == integer
		self.push(pad_value)
		i += 1
	end
	return self
end

def pad(integer, pad_value = nil)
	new_array = self
	i = new_array.length
	until i == integer
		new_array.push(pad_value)
		i += 1
	end
	return new_array
end

end

#Driver Code 
puts [1,2,3].pad(5) == [1,2,3,nil,nil]
puts [1,2,3].pad(5, 'apple') == [1,2,3,'apple', 'apple']
puts [1,2,3].pad(0) == [1,2,3]

# 3. Refactored Solution
# Maybe like this (see below) - but i'm not sure if that's much better

class Array

def pad!(integer, pad_value = nil)
	if integer > self.length
		(integer-self.length).times self.push(pad_value)
		return self
	else 
		return self
	end
end

end

# 4. Reflection 
# I very much liked this exercise to get into creating classes
# I got to the pseud code and initial solution pretty quickly
# but then got hung up on a small thing: I forgot to include a
# return statement so it always resulted in "nil". This confused
# me so much that it took me half an hour to figure oút whats wrong.
# Now I know, whats wrong, when there is just "nil"...