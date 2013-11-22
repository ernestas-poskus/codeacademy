# Blocks

Why do some methods accept a block and others don't? It's because methods 
that accept blocks have a way of transferring control from the calling method to the block and back again. 
We can build this into the methods we define by using the yield keyword.

def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }