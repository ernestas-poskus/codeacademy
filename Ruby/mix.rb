class Application
  attr_accessor :status
  def initialize; end
  # Add your method here!
  
  private 
  def password
    12345
  end
  
  public
  def print_status
    puts "All systems go!"
  end
  
end

####################################################################

module Languages
  FAVE = "Ruby"  # This is what you typed before, right? :D
end

class Master
    include Languages

  def initialize; end
  def victory
    puts FAVE
  end
end

total = Master.new
total.victory