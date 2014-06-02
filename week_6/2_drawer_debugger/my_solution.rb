# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: ].


# 2. Original Code

class Drawer

attr_reader :contents

# Are there any more methods needed in this class?

def initialize
@contents = []
@open = true
end

def open
@open = true
end

def close
@open = false
end 

def add_item(item)
@contents << item
end

def remove_item(item = @contents.pop) #what is `#pop` doing?
@contents.delete(item)
end

def dump  # what should this method return?
puts "Your drawer is empty."
@contents = []
end

def view_contents
puts "The drawer contains:"
@contents.each {|silverware| puts "- " + silverware.type }
end

end

class Silverware
attr_reader :type, :clean

# Are there any more methods needed in this class?

def initialize(type, clean = true)
@type = type
@clean = clean
end

def eat
puts "eating with the #{type}"
@clean = false
end

def clean_silverware
	@clean = true
	puts "silverware is clean now!"
end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?


fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "Error!" unless yield
end

drawer1 = Drawer.new
knife = Silverware.new("knife")
fork = Silverware.new("fork")
spoon = Silverware.new("spoon")

assert { knife.type == "knife" }
assert { drawer1.open == true }
assert { drawer1.add_item(knife) == "knife added to drawer." }

assert { drawer1.dump == [] }


# 5. Reflection 
# Very fun exercise! Tracing down the errors and making the code work, i like that stuff. Got a little stuck
# on the attr_reader and looked it up in the rubyist book. Helped me a lot to solify my understanding
# of the attr_reader and attr_writer concepts!