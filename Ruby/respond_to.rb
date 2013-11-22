# Call and Response

# Ruby is less concerned about what kind of thing an object is and only really cares about what method calls it responds to.

# Remember when we mentioned that symbols are awesome for referencing method names? 
# Well, .respond_to? takes a symbol and returns true if an object can receive that method and false otherwise. For example,

[1, 2, 3].respond_to?(:push)
# would return true, since you can call .push on an array object. However,

[1, 2, 3].respond_to?(:to_sym)
# would return false, since you can't turn an array into a symbol.

age = 26

# Rather than checking to see if our age variable is an integer, check to see if it will .respond_to? 
# the .next method. (.next will return the integer immediately following the integer it's called on, meaning 4.next will return 5.)

# Add your code below!
age.respond_to? :next
