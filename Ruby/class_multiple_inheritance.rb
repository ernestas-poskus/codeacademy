# Multiple inheritance

# Any given Ruby class can have only one superclass. 
# Some languages allow a class to have more than one parent, which is a model called multiple inheritance. 
# This can get really ugly really fast, which is why Ruby disallows it.

# However, there are instances where you want to incorporate data or behavior from several classes into a single class, 
# and Ruby allows this through the use of mixins. We'll learn about mixins in a later lesson!

# The demo code we're about to show you includes a fancy trick: if you want to end a Ruby statement without going to a new line, 
# you can just type a semicolon. This means you can write something like


class Creature
  def initialize(name)
    @name = name
  end
end

class Person
  def initialize(name)
    @name = name
  end
end

class Dragon < Creature; end
class Dragon < Person; end