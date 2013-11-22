# Method scope

# Public methods are by default

# Private methods are just that: they're private to the object where they are
# defined. This means you can only call these methods from other code inside
# the object. Another way to say this is that the method cannot be called with an explicit receiver. 
# You've been using receivers all along—these are the objects on which methods are called! Whenever you call object.method, object is the receiver of the method.

# In order to access private information, we have to create public methods that know how to get it. 
# This separates the private implementation from the public interface, and we'll go over this in more detail in the next two exercises.

class Dog
    def initialize(name, breed)
        @name = name
        @breed = breed
    end
    
    public
    def bark 
        puts 'Woof!'
    end
    
    private
    def id
        @id_number = 12345
    end
end