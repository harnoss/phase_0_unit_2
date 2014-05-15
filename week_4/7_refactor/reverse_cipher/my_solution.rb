# U2.W4: Refactor Cipher Solution

# I worked on this challenge by myself

# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    # Create an array with all the letters of the alphabet
    alphabet = ('a'..'z').to_a 
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
    # Create a hash with elements of alphabet as keys and values, values are "rotated by 4"
    # Output: {"a" => "e", "b" => "f", ...}
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
    
    original_sentence = sentence.downcase
    encoded_sentence = []
    # Take the string, go through each character of the string, and perform the code block after line 25
    original_sentence.each_char do |element|
      if cipher.include?(element)
        encoded_sentence << cipher[element]
      elsif element == ' '
        # Take ("sample") a random element from the array "spaces"
        encoded_sentence << spaces.sample
      else 
        encoded_sentence << element
      end
     end
    
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing?
# It basically creates arrays; e.g. it can transform hashes into arrays or an enum into an array as here

# 2. How does the rotate method work? What does it work on?
# It moves all the elements of an array to the left (like an egg-timer)
# Thus, when rotate(2) what has been at index number 2 will now be put at index number 0

# 3. What is `each_char` doing?
# Takes a string and iterates through each character of the string (instead of .split the string into array and then iterating through the array)

# 4. What does `sample` do?
# "samples" an element from a given array randomly

# 5. Are there any other methods you want to understand better?
# I am already familiar with the other methods, e.g. .join, .include? etc.

# 6. Does this code look better or worse than your refactored solution
# Better! It manages to do the same with less. For example, instead of (as in our refactored solution)
# array_abc = []
# ("a".."z").each {|letter| array_abc.push(letter)}
# -> it just says array_abc = ("a".."z").to_a
# Also, there's no need for "input = coded_message.downcase.split("")" just ".each_char" does the same

#    of the original cipher code? What's better? What's worse?
# Compared to the original cipher code, there's nothing worse, just better
# For example, there's no need for hard coding a hash with alphabet elements, it's generated automatically

# 7. Is this good code? What makes it good? What makes it bad?
# This seems like good code to me. It's easy to understand (one user of the code is the developer) and 
# I feel also can be quickly processed by the computer (the other user is the computer)

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")

# 5. Reflection 
# I loved this exercise! Very eyeopening to compare the refactored solution from the previous
# exercise with this one and see new methods in action. Seeing them in action really helps me
# to understand very quickly what's going on, combinded with some irb trial & error this makes
# very clear and good learning. An aha moment was definately .zip as this was exactely what I
# was looking for when refactoring the solution, but given that I was not aware of zip I instead
# used a work-around that took me some time to figure out (see below)
# 
# hash = Hash[alphabet.zip(alphabet.rotate(4))]
# vs.
# hash = Hash[alphabet.map.with_index.to_a]
#      index_number = hash[x]+4
#      decoded_letter = alphabet[index_number]
# where x is equal to the element/letter that is being iterated

# I feel increasingly confident with working with ruby.docs combined with irb and stockoverflow
# to make things work.