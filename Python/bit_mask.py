# The Man Behind the Bit Mask

# A bit mask is just a variable that aids you with bitwise operations. 
# A bit mask can help you turn specific bits on, turn others off, or just collect data from an integer about which bits are on or off.

# For example, let's say we wanted to check if the third bit from the right of number a is on. 
# Using the & operator with a mask would be the easiest way to accomplish this task. The setup might look like this:

# mask = 0b100
# desired = a & mask
# Using the & operator with 0b100 will turn off all the bits in a off except for the third bit from the right. 
# If your resulting number is greater than zero, then that bit is on. If not, the bit was off to begin with.


def check_bit4(x):
    mask = 0b1000
    if x & mask > 0:
        return 'on'
    else:
        return 'off'
        
print check_bit4(0b1) # ==> "off"
print check_bit4(0b11011) # ==> "on"
print check_bit4(0b1010) # ==> "on"




a = 0b10111011
mask = 0b0100  # 1
desired =  a | mask # 0b111, or 7
print bin(desired)



a = 0b11101110
mask = 0b11111111   # 7
desired =  a ^ mask # 0b1
print bin(desired)



def flip_bit(number, n):
    mask = (0b1 << (n-1))
    return bin(number ^ mask)