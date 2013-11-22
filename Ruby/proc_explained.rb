# Proc Syntax

# Procs are easy to define! You just call Proc.new and pass in the block you want to save. 
# Here's how we'd create a proc called cube that cubes a number (raises it to the third power):

# cube = Proc.new { |x| x ** 3 }

# We can then pass the proc to a method that would otherwise take a block, 
# and we don't have to rewrite the block over and over!

[1, 2, 3].collect!(&cube) # ==> [1, 8, 27]
[4, 5, 6].map!(&cube) # ==> [64, 125, 216]
# (The .collect! and .map! methods do the exact same thing.)

# The & is used to convert the cube proc into a block (since .collect! and .map! normally take a block). 
# We'll do this any time we pass a proc to a method that expects a block.


# The .floor method rounds a float (a number with a decimal) down to the nearest integer. 
# Write a proc called round_down that will do this rounding (we've added the code to pass it to floats.collect).


floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# Write your code below this line!

round_down = Proc.new { |n| n.floor }


# Write your code above this line!
ints = floats.collect(&round_down)




# Why Procs?

# Why bother saving our blocks as procs? There are two main advantages:

# 1. Procs are full-fledged objects, so they have all the powers and abilities of objects. (Blocks do not.)

# 2. Unlike blocks, procs can be called over and over without rewriting them. 
# This prevents you from having to retype the contents of your block every time you need to execute a particular bit of code.

# Here at the amusement park, you have to be four feet tall
# or taller to ride the roller coaster. Let's use .select on
# each group to get only the ones four feet tall or taller.

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]


over_4_feet = Proc.new do |height| 
    height >= 4 
end

can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

























