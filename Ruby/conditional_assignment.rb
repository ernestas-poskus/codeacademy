# Conditional Assignment

# We've seen that we can use the = operator to assign a value to a variable. 
# But what if we only want to assign a variable if it hasn't already been assigned? 
# For this, we can use the conditional assignment operator: ||= 
# It's made up of the or (||) logical operator and the normal = assignment operator.


favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book