# Override!

# Sometimes you'll want one class that inherits from another to not only take on the methods and attributes of its parent, 
# but to override one or more of them.

# For instance, you might have a PartTimeEmployee class that inherits from Employee. 
# Both classes might have a calculate_wage method that computes a biweekly paycheck, but the math might be different for 
# part-time employees than for other employees; rather than add a calculate_part_time_wage method to your derived class 
# and inherit a calculate_wage method you'll never use, you can instead just explicitly create a calculate_wage method in the 
# derived class and have it return the appropriate wage for a part-time employee. This new wage calculation will override the inherited version.


class Employee(object):
    """Models real-life employees!"""
    def __init__(self, employee_name):
        self.employee_name = employee_name
	
    def calculate_wage(self, hours):
        self.hours = hours
        return hours * 20.00

# Add your code below!
class PartTimeEmployee(Employee):
    def calculate_wage(self, hourse):
        self.hours = hours
        return hours * 12.00