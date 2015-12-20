# PezDispenser Class from User Stories

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
# You already know you need to have a PezDispenser class by looking at the Driver code, but you may be unsure of what attribute(s) and method(s) it needs. Looking at the user stories above, list the attribute(s) and method(s) you'll need to support the functionality required by the user stories and the driver code. With each method, also take a moment to identify the input and output. If there is no input or output, identify that as well. Then, write pseudocode for how each method should work.

# Break the problem down into small steps, then write out those steps into pseudocode. Your pseudocode should avoid using any code-specific language or identifying specific methods.

# Initialize method takes flavors
# pez_count method puts # pez (length of flavors array)
# see_all_pez method puts flavors
# add_pez method takes flavor as input, adds that to flavors array
# get_pez method removes one element from flavors array

# Initial Solution

class PezDispenser
  def initialize(flavors)
    @flavors = flavors
  end

  def pez_count
    @pez_count = @flavors.length
  end

  def see_all_pez
    @flavors
  end

  def add_pez(flavor)
    @flavors << flavor
  end

  def get_pez
    @flavors.pop
  end

end



# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection