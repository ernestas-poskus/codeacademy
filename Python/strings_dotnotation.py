# Dot Notation

# As promised, we'll now explain the reason you use len(string) and str(object), but dot notation (e.g. "String".upper()) for the rest.

# Dot notation works on string literals ("The Ministry of Silly Walks".upper()) and variables 
# assigned to strings (ministry.upper()) because these methods are specific to strings—that is, they don't work on anything else.

# By contrast, len() and str() can work on a whole bunch of different objects (which we'll get to later), 
# so they aren't tied to strings with dot notation.

ministry = "The Ministry of Silly Walks"

print len(ministry)
print ministry.upper()