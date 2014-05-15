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


# 3. Refactored Solution



# 4. Reflection 