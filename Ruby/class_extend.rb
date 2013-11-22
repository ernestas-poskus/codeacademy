# Extend Your Knowledge

# Whereas include mixes a module's methods in at the instance level (allowing instances of a particular class to use the methods), 
# the extend keyword mixes a module's methods at the class level. This means that class itself can use the methods, as opposed to instances of the class.


# ThePresent has a .now method that we'll extend to TheHereAnd

module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now




