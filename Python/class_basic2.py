class Triangle(object):
    
    number_of_sides = 3
    
    def __init__(self, a1, a2, a3):
        self.angle1 = a1
        self.angle2 = a2
        self.angle3 = a3
        
    def check_angles(self):
        sum = self.angle1 + self.angle2 + self.angle3
        if sum == 180:
            return True
        return False
        
        
        
my_triangle = Triangle(10, 40, 130)
print my_triangle.number_of_sides
print my_triangle.check_angles()






class Triangle(object):
    
    number_of_sides = 3
    
    def __init__(self, a1, a2, a3):
        self.angle1 = a1
        self.angle2 = a2
        self.angle3 = a3
        
    def check_angles(self):
        sum = self.angle1 + self.angle2 + self.angle3
        if sum == 180:
            return True
        return False
        

class Equilateral(Triangle):
    angle = 60
    def __init__(self):
        self.angle1 = self.angle
        self.angle2 = self.angle
        self.angle3 = self.angle
    
        
        
my_triangle = Triangle(10, 40, 130)
print my_triangle.number_of_sides
print my_triangle.check_angles()