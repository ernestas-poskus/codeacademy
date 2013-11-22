# int()'s Second Parameter

# Python has an int() function that you've seen a bit of already. It can turn non-integer input into an integer, like this:

# int("42")
==> 42
# What you might not know is that the int function actually has an optional second parameter. 
# If given a string containing a number and the base that number is in, the function will return the value of that number in base ten. 
# So running int("1010", 2) will return 10 because 0b1010 is the base 2 equivalent of 10.


print int("1",2)
print int("10",2)
print int("111",2)
print int("0b100",2)
print int(bin(5),2)
print int('11001001',2)
