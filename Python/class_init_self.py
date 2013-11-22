# More on __init__() and self

# Now that you're starting to understand how classes and objects work, it's worth delving a bit more into __init__() and self. They can be confusing!

# As mentioned, you can think of __init__() as the method that "boots up" a class' instance object: the init bit is short for "initialize."

# The first argument __init__() gets is used to refer to the instance object, and by convention, that argument is called self. 
# If you add additional arguments—for instance, a name and age for your animal—setting each of those equal to self.name and self.age in the body of __init__() 
# will make it so that when you create an instance object of your Animal class, 
# you need to give each instance a name and an age, and those will be associated with the particular instance you create.


# Class definition
class Animal(object):
    """Makes cute animals."""
    # For initializing our instance objects
    def __init__(self, name, age, hungry ):
        self.name = name
        self.age = age
        self.is_hungry = hungry

# Note that self is only used in the __init__()
# function definition; we don't need to pass it
# to our instance objects.

zebra = Animal("Jeffrey", 2, True)
giraffe = Animal("Bruce", 1, False)
panda = Animal("Chad", 7, True)

print zebra.name, zebra.age, zebra.is_hungry
print giraffe.name, giraffe.age, giraffe.is_hungry
print panda.name, panda.age, panda.is_hungry