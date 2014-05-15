# U2.W4: Create Accountability Groups


# I worked on this challenge by myself

# 2. Pseudocode

# Input: An array with names
# Output: An array of arrays that contain max. 4 elements
# Steps:
# Create a method that takes a number as argument and creates a sample cohort with names matching the number
# Create a method that takes an array as an argument
# - shuffle the array
# - create a new empty array
# - UNTIL argument array is empty
# - eraze the last 4 elements of the given array and push them into the new empty array
# - return the new array


# 3. Initial Solution
def create_cohort(n)
  $cohort = Array.new
  i = 1
  (n).times do
		$cohort.push("Person "+ i.to_s)
		i += 1
	end
  return $cohort
end

def abg_maker(array)
	array.shuffle!
	abg = []
		until array.length == 0
			abg.push(array.pop(4))
		end
	return abg
end

create_cohort(20)
abg_maker($cohort)


# 4. Refactored Solution

def create_cohort(n)
  $cohort = Array.new
  i = 1
	(n).times do
		$cohort.push("Person "+ i.to_s)
		i += 1
	end
  puts $cohort
end

def abg_maker(array)
	array.shuffle!
	abg = array.each_slice(4).to_a
	return abg
end

create_cohort(20)
abg_maker($cohort)


# 1. DRIVER TESTS GO BELOW THIS LINE

#1 Takes an array as input
def test1(array)
	puts "Test1: Should take an array as argument -> "
	array.class == Array ? true : false
end
#2 Gives an array as ouput
def test2(array)
	puts "Test2: Should return an array -> "
	abg_maker(array).class == Array ? true : false
end

#3 Gives an array of arrays as output
def test3(array)
	puts "Test3: Should return an array of arrays -> "
	abg_maker(array).any? {|x| x.class != Array} ? false : true
end

#4 Groups have max 4 members
def test4(array)
	puts "Test4: Groups should have 4 members max -> "
	abg_maker(array).any? {|x| x.length > 4} ? false : true
end

#5 Creates groups randomly
def test5(array)
	puts "Test5: Groups should be created randomly ->"
	abg_maker(array) != abg_maker(array) ? true : false
end

#TESTS
test1($cohort)
test2($cohort)
test3($cohort)
test4($cohort)
test5($cohort)


# 5. Reflection 
# That was a stretch! I spent a lot of time on this exercise with a lot of learning. There's still
# some work to do (ie what happens if cohort is not divisible by 4? etc.) but this will need to wait
# for now. I have never written any driver tests before, so my first time here and it took me a while
# to figure out, what to do and which syntax to use. Also, I found it very hard to come up with tests
# before thinking about the code itself. I see the point here, i guess it will just take me while to get
# used to this type of thinking and approach.
# Besides that, I looked up read Ruby docs and found the methods for slice, pop, push, shuffle, and to_a and experimented
# with them in irb. This was a challenge and it took me some iterations to figure out how to use them. Also,
# because it was actually the first time that i worked with irb (before, i used the sandbox on Socrates),
# so I retook the irb tutorial https://www.ruby-lang.org/en/documentation/quickstart/ but now feel very
# comfortable with it. So in sum, learning on all lines of attack!

