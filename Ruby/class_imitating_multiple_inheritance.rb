# Imitating Multiple Inheritance

# Now you understand why we said mixins could give us the ability to mimic inheriting from more than one class: 
# by mixing in traits from various modules as needed, we can add any combination of behaviors to our classes we like!

# Create your module here!
module MartialArts
    def swordsman
        puts "I'm a swordsman."
    end
end




class Ninja
    include MartialArts

  def initialize(clan)
    @clan = clan
  end
end

class Samurai
    include MartialArts

  def initialize(shogun)
    @shogun = shogun
  end
end