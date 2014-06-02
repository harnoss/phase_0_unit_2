# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
# Create a class takes an array of flavors
# Create a method that 
# - counts the number of pez
# - takes one and deletes one
# - takes a flavor and adds it in
# - returns all flavors


# 3. Initial Solution

class PezDispenser
 attr_reader :content


def initialize(flavors)
	@content = flavors
end

def get_pez
	@content.pop
end

def add_pez(flavor)
	@content.push(flavor)
end

def pez_count
	@content.length
end

def see_all_pez 
	self.content.to_a
end

end
 


# 4. Refactored Solution
class PezDispenser

def initialize(flavors)
	@content = flavors
end

def get_pez
	@content.pop
end

def add_pez(flavor)
	@content.push(flavor)
end

def pez_count
	@content.length
end

def see_all_pez 
	@content
end

end



# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "Error!" unless yield
end

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)

assert {"A new pez dispenser has been created. You have #{super_mario.pez_count} pez!" == "A new pez dispenser has been created. You have 9 pez!"}

puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
assert {super_mario.content.include? ("purple")}

puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"


# 5. Reflection
# Good recap of class basics, unf didn't run into any major issues so
# no huge learning here, but still good recap to practice classes 