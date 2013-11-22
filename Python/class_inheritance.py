# Inheritance Syntax

# In Python, inheritance works like this:

# class DerivedClass(BaseClass)
# where the derived class is the new class you're making and the base class is the class from which that new class inherits.

class Shape(object):
    """Makes shapes!"""
    def __init__(self, number_of_sides):
        self.number_of_sides = number_of_sides

class Triangle(Shape):
    def __init__(self,s1,s2,s3):
        self.side1 = s1
        self.side2 = s2
        self.side3 = s3
		
		
		
		
		
		