# In Ruby, we use @ before a variable to signify that it's an instance variable. 
# This means that the variable is attached to the instance of the class. For example,

class Car
  def initialize(make, model)
    @make = make
    @model = model
  end
end

kitt = Car.new("Pontiac", "Trans Am")

# creates an instance, kitt, of the class Car. 
# kitt has his own @make ("Pontiac") and @model ("Trans Am"). Those variables belong to the kitt instance, 
# which is why they're called instance variables.


class Person
    def initialize name
        @name = name
    end
end


matz = Person.new('Yukihiro')