def yield_name(name)
  puts "In the method! Let's yield."
  yield name
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |name| puts "My name is #{name}." }

# Now call the method with your name!
yield_name("Ernis") { |name| puts "My name is #{name}." }



def double x
    yield x * 2
end

double(2) { |x| puts "My name is #{naxme}." }
double(33) { |x| puts "My name is #{x}." }