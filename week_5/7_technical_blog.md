[Week 5 Home](../)

# U2.W5: Technical Blog Entry

## Learning Competencies
- Explain when, why, and how to use classes
- Explain how data structures and classes can model a real-world object


## Release 0: New File
Copy your blog tempate into a new HTML file named `week5_technical.html`. 

## Release 1: Topic
You've had a LOT of practice with ruby classes this week, so now is the time to teach others about it! Pick something you would like to model and teach others when to use instance variables, instance methods, etc. 

##Release 2: Blog
Write a blog post about the topic you selected. 
Be sure to be thorough. This is part of your portfolio that will help set you apart to employers when you graduate, so have fun and show your enthusiasm!

## Release 3: Submit
Link to your blog on the index of your site and commit and push your changes to GitHub. 

Share your blog on the google+ community under "Blog Posts!" Read others blogs. What did you like about them? 

Post a comment on their community post to start a discussion or give some feedback.  Consider sharing your blog post on Reddit as well.

There are two types of methods when it comes to classes: Instance methods and class methods:
Instance methods
Class methods ("singleton method")

<strong>Instance methods</strong> apply to all objects of a class and can be called by all of those. For example:

class Ticket
def initialize(venue, date)
@venue = venue
@date = date
end

def price=(price)
	@price = price
end

def price
	@price
end

end

new_ticket = Ticket.new("Berlin stage", "12/12/2014")
new_ticket.price = 20.00
puts new_ticket.price
=> 20.0

<strong>Class methods</strong> apply only to the Class itself and cannot be called by any objects of a class. At the same time, they can be called even though there are no objects to the class. Thus, class methods work even without any instances and/or objects. A good example is creating a method to convert currencies:

class Currency_converter
def Currency_converter.usd_to_eur(amount_in_usd)
	amount_in_eur = amount_in_usd * 1.3
end
end

puts Currency_converter.usd_to_eur(100)
=> 130.0