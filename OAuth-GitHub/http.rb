# The HTTP stands for HyperText Transfer Protocol. 
# HyperText is text with links in it (like this!) and a transfer protocol is a fancy way of saying "rules for getting something from one place to another." 
# In this case, the rules are for transferring web pages to your browser.

require 'open-uri'

kittens = open('http://placekitten.com/')
response_status = kittens.status
response_body = kittens.read[559, 441]

puts response_status
puts response_body


# The Client/Server Relationship
# Did you see that? A few lines of Ruby pulled in some source code from the PlaceKitten website! (They're very good at cat pictures.)

# We can use HTTP to grab just about any web page on the Internet. But where do those web pages come from? They come from other computers on the Internet called servers.

# The Internet is full of clients (like you!) who ask for various resources (web pages, files, and so on), and servers, 
# who store that information (or know where to get it). When you make an HTTP request, 
# it zips through the Internet until it finds the server that knows how to fulfill that request. Then the server sends a response back to you!


###########################################################################################################################################


# No REST for the Wicked
# In fact, this client/server relationship is a prerequisite of a set of principles called REST (or Representational State Transfer). 
# This sounds kind of scary, but it's super easy—let's walk through it together.

# Remember how we said HTTP involves sending hypertext (text with links)? Whenever you navigate through a site by clicking links, 
# you're making a state transition, which brings you to the next page (representing the next state of the application). That's it!

# By following this simple model of clicking from page to page, you're starting to follow REST principles. 
# When something follows REST principles, we say that thing is RESTful. 
