# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: ].


# Original Solution
class CreditCard

def initialize(credit_card_number)
	unless credit_card_number.to_s.length == 16
		raise ArgumentError.new("Pls enter a valid number")
	end
	@number = credit_card_number
end

def check_card
# split it into array of integers
step_1 = @number.to_s.split("")
step_1.map! { |e| e.to_i}

# double up every second element
step_2 = step_1.each_index do |index|
  		if index % 2 == 0
  			step_1[index] *= 2 
  		end
  	end
# join, split, and make it integer again
step_3 = step_2.join("").to_s.split("")
step_3.map! {|e| e.to_i}
# sum
step_4 = step_3.inject(:+) 
# check if % 10 == 0
if step_4 % 10 == 0
	true
else
	false
end
end

end

# Refactored Solution
class CreditCard

	def initialize(credit_card_number)
		unless credit_card_number.to_s.length == 16
			raise ArgumentError.new("Pls enter a valid number")
		end
		@number = credit_card_number
	end

	def double
		@doubled_number = @number.to_s.split("").map! { |e| e.to_i}
		(0..16).each { |index| @doubled_number[index] = @doubled_number[index] * 2 if index.odd? }
		@doubled_number = @doubled_number.map! { |num| num.to_s }.join.split ""
	end

	def sum
		@sum = @doubled_number.map! {|e| e.to_i}.inject(:+)
	end

	def check_card
		double
		sum
		@sum % 2 == 0
	end

end




# DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "error!" unless yield
end


assert {CreditCard.instance_method(:initialize).arity == 1}
assert {CreditCard.instance_method(:check_card).arity == 0}

card = CreditCard.new(4408041234567893)
assert {card.check_card == true} 
card = CreditCard.new(4408041234567892)
assert {card.check_card == false} 

# Reflection 
#I split up my code in sperate elements for readability. I like it now,
# even though there's a faster solution by putting the code all in one
# method, this one makes it easier to change and test individual elements.
# Great learning here on refactoring!