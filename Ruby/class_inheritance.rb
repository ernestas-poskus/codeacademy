# Inheritance

# Inheritance is the process by which one class takes on the attributes and methods of another, and it's used to express an is-a relationship. 
# For example, a cartoon fox is a cartoon mammal, so a CartoonFox class could inherit from a CartoonMammal class. 
# However, a Wizard is not an Elf , so it shouldn't inherit from the Elf class 
# (even if they have a lot of magical attributes and methods in common). 
# Instead, both Wizard and Elf could ultimately inherit from the same MagicalBeing class.

class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError
end

err = SuperBadError.new
err.display_error



class Application
  def initialize(name)
    @name = name
  end
end

# Add your code below!
class MyApp < Application 
end
