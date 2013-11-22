# Class super

# When you call super from inside a method, that tells Ruby to look in the superclass of the current class 
# and find a method with the same name as the one from which super is called. 
# If it finds it, Ruby will use the superclass' version of the method.


class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!
class Dragon < Creature 
    def fight
        puts "Instead of breathing fire..."
        super
    end
end
