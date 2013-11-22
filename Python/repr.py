# __repr__

# Chances are, you won't be designing Car classes in the real world anytime soon. 
# Usually, classes are most useful for holding and accessing abstract collections of data.

# One useful class method to override is the built-in __repr__() method, which is short for representation; 
# by providing a return value in this method, we can tell Python how to represent an object of our class (for instance, when using a print statement).

class Point3D(object):
    def __init__(self, n1, n2, n3):
        self.x = n1
        self.y = n2
        self.z = n3
    
    def __repr__(self):
        return "(" + str(self.x) + ', ' + str(self.y) + ', ' + str(self.z) + ")"
        
my_point = Point3D(1,2,3)
print my_point