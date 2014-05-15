# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# An integer
# What is the output? (i.e. What should the code return?)
# A string
# What are the steps needed to solve the problem?

#1 - Transform Integer to string
#2 - Reverse string
#3 - Split string into groups of max. 3 and create seperate arrays
#4 - Join the string elements with a comma
#6 - Reverse the string


# 2. Initial Solution


def separate_comma(integer)
	integer.to_s.reverse.scan(/.{1,3}/).join(",").reverse
end


# 3. Refactored Solution
# It's a quiet long line, so maybe it makes it hard to read?
# I'm not sure what the right thing would be to refactor my solution
# I like the fact that it's done with just one line

# 4. Reflection 
# The Pseudocode saved me here. I started out pseudo coding if statements
# (e.g. id string.length > 4 then insert a comma at index number 3 etc.)
# But it started to become really long and complicated
# So before getting into the coding, I came back to the problem and 
# tried to find another approach...and i did! A super simple one actually.
# I knew that there was something one could do with split and join but 
# didn't know how exactely to apply them. Then I went on stackoverflow
# and found a resource describing scan (including handling the problem for)
# odd integers. http://stackoverflow.com/questions/564510/splitting-string-into-pair-of-characters-in-ruby
# I tried and tested on irb...and it works! I feel what really helped me here
# is (1) Pseudocode and (2) being aware of what ruby can do. You dont have to know
# how exactely to apply them, but just awareness is already super helpful.
# I will spend some more time now on skipping through ruby docs.