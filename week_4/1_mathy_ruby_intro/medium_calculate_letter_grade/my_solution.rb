# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].
# Myself

# 1. Pseudocode

# INPUT: An array of numbers
# OUTPUT: A letter grade
# STEPS TO SOLVE: 
# Step 1: Calculate average point grade from array of grades
# Step 2: Translate average point grade into letter grade

# 2. Initial Solution

def get_grade(array)
	average_grade = array.inject(:+)/array.length
	case average_grade
		when 90..100
			"A"
		when 80..90
			"B"
		when 70..80
			"C"
		when 60..70
			"D"
		else "F"
	end
end

# 3. Refactored Solution

def get_grade(array)
	case array.inject(:+)/array.length
		when 90..100
			"A"
		when 80..90
			"B"
		when 70..80
			"C"
		when 60..70
			"D"
		else "F"
	end
end

# 4. Reflection 
# This exercice was super helpful to solify my knowledge on hpw to apply the "case" flow controls
# Usually, I am working with what, ifs but I find the case structure much more intuitive. I was not exactely
# sure how to do it in detail so I looked up the concept in the Ruby labs on Socrates.