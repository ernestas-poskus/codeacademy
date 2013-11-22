# Feeling Included

# We can do more than just require a module, however. We can also include it!

# When we include a module that has already been required, we pull in all its methods and constants at the instance level. 
# That means that any class that includes a certain module can create objects (instances) that can use those very same methods!

# A nice effect of this is that you no longer have to prepend your constants and methods with the module name; 
# since everything has been pulled in, you can simply write PI instead of Math::PI.

# Okay, we sort of fibbed to you earlier. There is a reason to create instance methods in a module, 
# even though you can't directly instantiate a module: it's to include those instance methods in your own classes, which you can instantiate.


class Angle
  
  include Math
  
  attr_accessor :radians
  
  def initialize(radians)
    @radians = radians
  end
  
  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
acute.cosine