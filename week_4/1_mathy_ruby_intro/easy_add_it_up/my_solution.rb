# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].
# By myself

# 1. Pseudocode

# INPUT 1: An array of numbers
# INPUT 2: An array of strings
# OUTPUT 1: The sum of all elements of the number array
# OUTPUT 2: One merged sentence of all strings that make up the string array
# Create two methods that take an array as input and return an output as specified above


# 2. Initial Solution
def total(array)
	array.inject(:+)
end

def sentence_maker(array)
	array.first.capitalize!
	array.join(" ") + "."
end

# 3. Refactored Solution
# The first method is hard to make shorter, so it looks good to me
# The second method could be simplified by merging the two return statements:
def sentence_maker(array)
	array.first.capitalize!.join(" ") + "."
end
# but I feel would make it harder to read, so that's why I would keep it as is


# 4. Reflection 
# First time working with rspec and I was struggling a bit initally to get the 
# concept, but then I did the suggested tutorial in detail and eventually got
# the idea. Super fun to use it! My initial solution worked right away, so I 
# put some errors in on purpose to see what happens and learn reading the error
# messages. They are quiet clear and very helpful so I feel encouraged to move on
# and make mistakes given how much guidance these messages provide. 
# When doing the code I followed my inituition and was super surprised to see that
# it actually worked right away. I remembered that there was something like "merge"
# but didn't know exactely how to apply it, so I looked it up in my booklet (I am writing
# down pieces of code to memorize) and found ".join" there. I realized how helpful a
# resource like this is to me so I will continue writing down learnings in a systematic
# way so that I can look them up when ever I need to as well as review them every day.