# U2.W5: Class Warfare, Validate a Credit Card Number

# I worked on this challenge by myself

# 2. Pseudocode

# Input: a credit card number
# Output: true or false depending on whether algorthim is passed or not
# 3 step algorithm:
#0 Initialize credit card class and throw error if card length is not equal to 16
#1 Starting with the second to last digit, double every other digit until you reach the first digit
#2 Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0)
#3 If the total is a multiple of ten, you have received a valid credit card number!

# 3. Initial Solution

class CreditCard

def initialize(credit_card_number)
	unless credit_card_number.to_s.length == 16
		raise ArgumentError.new("Pls enter a valid number")
	end
	@number = credit_card_number
end

def check_card
# split it into array
step_1 = @number.to_s.split("")

# if index number even then double up the number
step_2 = step_1.zip((1..16).to_a)
step_3 = step_2.collect{ |e| e[1] % 2 != 0 ? e[0].to_i * 2 : e[0]}
step_4 = step_3.map! { |e| e.to_i}

# join, split
step_5 = step_4.join("").to_s.split("")
# to integer
step_6 = step_5.map! {|e| e.to_i}
# sum
step_7 = step_6.inject(:+) 
# check if % 10 == 0
if step_7 % 10 == 0
	true
else
	false
end
end

end

test = CreditCard.new(4563960122001999)
test.check_card


# 4. Refactored Solution

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

# 1. DRIVER TESTS GO BELOW THIS LINE

puts CreditCard.instance_method(:initialize).arity == 1
puts CreditCard.new(11111111111111112) == ArgumentError
puts CreditCard.new(1) == ArgumentError
puts CreditCard.instance_method(:check_card).arity == 0

card = CreditCard.new(4408041234567893)
puts card.check_card == true
card = CreditCard.new(4408041234567892)
puts card.check_card == false


# 5. Reflection 
# Very interesting challenge -> I started out far to complicated
# in the beginning, because I didn't know that .each_index exists.
# Initially I wanted to create a Hash to look up index values, but then 
# I turned to a nasted array. No need for that with .each_index! this
# painful insight will stick...I think I should do more research before
# I get into the acual coding. Brainstorm more different ways to deliver
# Against the pseudo code and then pick one. Very valuable learning for me.