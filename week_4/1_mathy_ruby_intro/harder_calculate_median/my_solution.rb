# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with: Jared Chevalier

# 1. Pseudocode

#INPUT: An array of either all numbers or all strings
#OUTPUT: The median value
#STEPS:
# Sort the array from lowest to highest
# IF array is odd, return the number in the array whose
# Index number matches half of the array length - 0.5
# IF array is even, return the average of those two numbers in the array whose
# Index number is equal to half of the array length OR equal to half of the array length - 1 


# 2. Initial Solution
def median(array)
	if array.length % 2 != 0
		array.sort!.(array.length/2-0.5)
	else array.sort!.((array.length/2 + array.length/2+1)/2)
	end
end



# 3. Refactored Solution
def median(array)
  	array.sort!
  	half = array.length / 2
  if array.length.odd?
		return (array[half  + 0.5])
		else
		return ((array[half] + array[half -1]) / 2.0)
	end
end

# 4. Reflection 