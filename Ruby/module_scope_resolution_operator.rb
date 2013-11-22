# Resolve to Keep Learning

# One of the main purposes of modules is to separate methods and constants into named spaces. 
# This is called (conveniently enough) namespacing, and it's how Ruby doesn't confuse Math::PI and Circle::PI.

# See that double colon we just used? That's called the scope resolution operator, 
# which is a fancy way of saying it tells Ruby where you're looking for a specific bit of code. 
# If we say Math::PI, Ruby knows to look inside the Math module to get that PI, not any other PI (such as the one we created in Circle).

# We can use the scope resolution operator to reach methods as well as constants. 
# The trick here, though, is to remember that because modules can't be instantiated, we can't just use def some_name. 
# That will make an instance method! Instead, we'll want to create methods at the class/module level. 
# We can do this two ways: by explicitly calling the method on the module, like so:


puts Math::PI


require 'date'

puts Date.today