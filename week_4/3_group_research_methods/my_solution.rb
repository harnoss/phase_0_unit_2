# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 3

# SORTING ARRAYS

# Only calling .sort on the array will not work as the array contains strings and numbers
# and they cannot be sorted at the same time with just sort. That's why we transform the numbers to
# strings with .to_s as part of the sorting method

def my_array_sorting_method(source)
  source.sort_by {|element| element.to_s} 
end

# OR as an alternative:
# This solution does not transform numbers into strings, but manages to sort w/o changing the numbers
# It uses three additional methods to accomplish this: 
# .partition => seperates one array into two based on specified command
# => combined with {|x| x.is_a? String} returns one array containing two arrays, one of them with all the strings, the other one with all the numbers
# .map => transforms an array based on specified command
# => combined with &:sort it thus "overwrites" the existing two arrays by sorting them in ascending order
# .flatten => merges several arrays within one array into one joint array
# => here, it starts with one array that contains two arrays and "flattens" it into one joint array

def my_array_sorting_method(source)
	source.partition{|x| x.is_a? String}.map(&:sort).flatten
end


# SORTING HASHES

# The first part of {|key,value| ...} is always the same
# The second part, in this case: {... [value, key] } is what needs to be specified to get the desired outcome
# Just putting "value" would sort ascending by value, just putting key would sort ascending by key
# This alone, would not work here, because we have hash elements that have the same key (=age)
# So we want to tell ruby to - after sorting by value - it should sort by key
# We do this by stating {... [value, key] }

def my_hash_sorting_method(source)
  source.sort_by {|key,value| [value, key] } 
end

# OR as an alternative:
# Look here to check out the logic (I can't explain it better than he has already...):
# http://www.jypepin.com/posts/3

def my_hash_sorting_method(source)
  source.sort_by {|a,b| a[1] <=> b[1]] } 
end

# Identify and describe the ruby method you implemented. 
# sort_by method:
# Goes through all the elements of an array/hash and sorts them by the command specified in {}
# If not further specificied just calling .sort on an array will return an array sorted 
# ascending from a-z or smallest-highest number
# See above comments next to code to dive into details of how to apply sort under specific conditions




################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# I like this experiential approach to coding with "go and find out how it works"
# I feel it helps me a lot to actually learn how to apply a concept and the learning
# sticks more (especially also through writing up in detail an explanation for how it works)
# I was stuck several times so I research a lot:
# http://www.slideshare.net/harisamin/the-enumerable-module-or-how-i-fell-in-love-with-ruby
# http://jamesgolick.com/2008/1/5/an-introduction-to-ruby-s-enumerable-module.html
# http://www.jypepin.com/posts/3
# Ruby docs is a good first point of attack, but in general, i find the explanations
# often not detailed enough to make it work right away. Then, i use stackoverflow, when I
# am lucky i find an answer there, if not I go for blogs
# Worked well here, but also takes some time.