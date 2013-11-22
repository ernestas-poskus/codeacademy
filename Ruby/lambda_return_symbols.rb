# Create a lambda, symbol_filter, that checks to see if each element in my_array is a symbol.
# Create a variable, symbols, and set this equal to calling .select on my_array and passing it your lambda.

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# Add your code below!
symbol_filter = lambda { |v| v.is_a? Symbol }

symbols = my_array.select(&symbol_filter)