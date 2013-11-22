# The Marriage of Modules and Classes

# What we did in the last exercise might not have seemed strange to you, 
# but think about it: we mixed together the behaviors of a class and a module!

# When a module is used to mix additional behavior and information into a class, it's called a mixin. 
# Mixins allow us to customize a class without having to rewrite code!


module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump