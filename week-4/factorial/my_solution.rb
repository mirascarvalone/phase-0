# Factorial

# I worked on this challenge with Dana.


# Your Solution Below
def factorial(number)
  factorial = 1
  i=0

  if number == 0
    return 1

  else
    while i < number
      factorial = factorial*(number-i)
      i +=1
    end
  end

  return factorial
end


# This method also works (using recursion):

# def factorial(number)
#   if number == 0
#     return 1
#   else
#     number*factorial(number-1)
#   end
# end



# Psuedocode
# start with low number, work up --> condition that zero returns 1
# factorial(1) = 1 --> may need special condition
# 0 - 1
# 1 - 1
# 2 - 2
# 3 - 6
# 4 - 24
# 5 - 120

# n*n-1*n-2 repeated until n=1

# while n > 1
#   n*n-1
#   n-=1


# 2! = 2*1!
# 3! = 3*2!
# 4! = 4*3!
# -- if x= 0 then output = 1
#   otherwise x*factorial(x-1)
# increment each integer by 1
# x! = x*(x-1)!

# while number > 1
#   return number*(number-1)
#   number-=1
# end