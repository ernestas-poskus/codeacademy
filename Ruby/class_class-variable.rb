# Twice the @, Twice as Classy

# We can create class variables by starting a variable name with two @ symbols. 
# Class variables are attached to entire classes, not just instances of classes, like so:

class MyClass
  @@class_variable
end

# Because there's only one copy of a class variable shared by all instances of a class, we can use them to pull off some cool Ruby tricks. 
# For example, we can use a class variable to keep track of the number of instances of that class we've created. Let's do that now!


class Person
  # Set your class variable to 0 on line 3
  @@people_count = 0
  
  def initialize(name)
    @name = name
    # Increment your class variable on line 8
    @@people_count += 1
  end
  
  def self.number_of_instances
    # Return your class variable on line 13
    @@people_count
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"