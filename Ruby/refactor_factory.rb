# $VERBOSE = nil    # We'll explain this at the end of the lesson.
# require 'prime'   # This is a module. We'll cover these soon!

# def first_n_primes(n)

  # unless n.is_a? Integer
    # return "n must be an integer."
  # end

  # if n <= 0
    # return "n must be greater than 0."
  # end
  
  # prime_array ||= []
  
  # prime = Prime.new
  # for num in (1..n)
    # prime_array.push(prime.next)
  # end
  # return prime_array
# end

# first_n_primes(10)



$VERBOSE = nil    # We'll explain this at the end of the lesson.
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  "n must be an integer." unless n.is_a? Integer

  "n must be greater than 0." if n <= 0
  
  prime_array ||= []
  
  prime = Prime.new
  n.times { prime_array << prime.next }
end

first_n_primes(10)