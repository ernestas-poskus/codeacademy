# Lambdas are defined using the following syntax:

# lambda { block }

# Lambdas are useful in the same situations in which you'd use a proc. 
# We'll cover the differences between lambdas and procs in the next exercise; 
# in the meantime, let's get a little practice in with the lambda syntax.


strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!

symbolize = lambda { |x| x.to_sym }


# Write your code above this line!
symbols = strings.collect(&symbolize)