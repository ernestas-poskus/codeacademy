# Classier Classes

# We'd like our classes to do more than... well, nothing, so we'll have to replace our pass with something else.

# You may have noticed in our example back in the first exercise that we started our class definition off with an odd-looking function: __init__(). 
# This function is required for classes, and it's used to initialize the objects it creates. __init__() always takes at least one argument, 
# self, that refers to the object being created. You can think of __init__() as the function that "boots up" each object the class creates.

class Animal(object):
    def __init__(self, name):
        self.name = name


zebra = Animal('Jeffrey')

print zebra.name