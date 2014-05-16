# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

#Your class will need to return true or false when we call the #check_card. 
#Your class needs to be initialized with a credit card number that is exactly 16 digits 
# otherwise you should receive an ArgumentError.

Example given 4563 9601 2200 1999
Origin: 4   5   6   3   9   6   0   1   2   2   0   0   1   9   9   9
Step 1: 8   5  12   3  18   6   0   1   4   2   0   0   2   9  18   9
Step 2: 8 + 5 + 1 + 2 + 3 + 1 + 8 + 6 + 0 + 1 + 4 + 2 + 0 + 0 +2+ 9 + 1 + 8 + 9
Step 3: 70 (total above) % 10 == 0
Step 4: Profit

#1 Starting with the second to last digit, double every other digit until you reach the first digit
#2 Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0)
#3 If the total is a multiple of ten, you have received a valid credit card number!

# Don't forget to check on intialization for a card length
# of exactly 16 digits
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

# if index number % 2 == 0 then double up the number
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


#1) (0..16).each { |index| @doubled_number[index] = @doubled_number[index] * 2 if index.odd? }

#2) new_array = @credit_number.reverse.split("").map { |num| num.to_i }
#print new_array
#		@double_array = new_array.each_index do |num| 
#			if num.odd?  
#				new_array[num] = new_array[num]*2
#			end
#			end

#3) @number.each_index do |index|
#  		if index % 2 == 0
#  			@number[index] *= 2 
#  		end
#  	end

#4) how to update hashs?

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
# started out far to complicated