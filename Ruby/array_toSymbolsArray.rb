strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []

strings.each do |s| 
    symbols.push(s.to_sym) # symbols.push(s.intern ) 
end