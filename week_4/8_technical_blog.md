[Week 4 Home](./)

# U2.W4: Technical Blog Entry

## Learning Competencies
- Research a public ruby method and identify a scenario it could be used in
- Explain how to use an existing ruby method
<br> **OR**
- Compare different programming concepts
- Explain a methodology for deciding which data structure/ loop/ or language to use in a particular scenario


## Release 0: New file
Copy your blog tempate into a new HTML file named `week4_technical.html`. 


## Release 1: Research a Topic
### Option 1: Teach about Enumerable Methods
Select one of the ruby methods below, do some research on it, and think of a scenario that could teach how to use this method. Then write a blog that explains how it works (and what it works on) using that scenario. Be sure to include samples of code in your blog! It's good for people to see what you are talking about. 

#### Topics
- `Enumerable#map`
- `Enumerable#group_by`
- `Enumerable#cycle`

### Option 2: Research Questions
Research one of the following questions/topics. In your blog post, you will want to explain the background and teach others how to implement what you've learned. 

- Arrays vs. Hashes. What are they? What are they good for? How do you know which one to use? (Teach others a strategy for deciding)
- Looping - Discuss the various ways to loop in Ruby. How can you decide which is best to use? (Teach others a strategy for deciding)
- Ruby vs. JavaScript - Discuss the benefits/drawbacks of each as you've experienced them. Explain to others how to decide which is better to use for what. 
  Also include examples of how to do the same thing in each. 

If you want to go more in-depth with any of these research memory use and link it to your strategy for deciding which to use. 

Write this blog for an audience of newb programmers.


## Release 2: Publish
Link to your blog on the index of your site and push your changes. 

Make sure the index of your site is maintained, nice, and professional. This is your face in the online community, so make it nice!

## Release 3: Share!

Share your blog on the google+ community under "Blog Posts!" Read others and see if you agree or disagree. Start a discussion on this topic.  Consider sharing your blog post on Reddit as well.

# Map

According to the book "The well-grounded Rubyist", the map method is one of the most powerful and important enumerable or collection operations available in Ruby. There are 3 important things to know about map:
It always returns an array
The size of the array is always the same size as the original enumerable
Its elements consist of the result of calling the code block on each element in the original object

Mapping our [1,2,3] array through a block that multiplies each
item by 10 results in the new array [10,20,30].

>> array = [1,2,3]
=> [1, 2, 3]
>> array.map {|n| n * 10 }
=> [10, 20, 30]

Thus, #map is similar to #each except for one crucial point: #each
returns its receiver, but map returns a new array. 


#Cycle

#cycle gives you a way to loop ("cycle") through an array several times (as specified by an integer).
You can use it to decide how many each-like runs you want to perform consecutively.

Here's a great example from the Book "The well-grounded Rubyist" on playing cards:

class PlayingCard
	SUITS = %w{ clubs diamonds hearts spades }
	RANKS = %w{ 2 3 4 5 6 7 8 9 10 J Q K A }

	class Deck
		attr_reader :cards
	
	def initialize(n=1)
	@cards = []
	SUITS.cycle(n) do |s|
		RANKS.cycle(1) do |r|
		@cards << "#{r} of #{s}"
		end
	end
	end
end
end

#Group_by 

If you want to count how often each word turns up in a text, Group_by will be what you need.
Let's start with an example:

>> text = %w{ a bb cc dd eee fff gggg }
=> ["a", "bb", "cc", "dd", "eee", "fff", "gggg"]
>> text.group_by {|word| count.size }
=> {1=>["a"], 2=>["bb", "cc", "dd"], 3=>["eee", "fff"], 4=>[gggg]}

The block {|word| word.size } returns an integer for each word. The hash
returned by the entire group_by operation is keyed to the various sizes (1, 2, 3, 4), and
the values are arrays containing all the strings from the original array that are of the
size represented by the respective keys.
