#Attr Methods

# I worked on this challenge by myself.

# I spent 1 hour on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData

  attr_reader :name

  def initialize
    @name = "Mira"
  end
end


class Greetings

  attr_reader :namedata

  def initialize
    @namedata = NameData.new
  end

  def greeting
    puts "Hello #{namedata.name}!"
  end
end

greet = Greetings.new
greet.greeting
mira = NameData.new
mira.name

# Reflection

# Release 1:
# What are these methods doing?
#   These methods are storing age, name, and occupation information, and then allowing us to modify that information and access it, or print to the screen as we do here.
# How are they modifying or returning the value of instance variables?
#   The methods modify the instance variables by setting the instance variables equal to an argument passed into that method.

# Release 2:
# What changed between the last release and this release?
#   In this release, we used attr_reader to create the age variable, instead of having to define a method what_is_age later in the code.
# # What was replaced?
#   The what_is_age method is replaced by attr_reader :age
# # Is this code simpler than the last?
#   It is simpler and more readable. I imagine it will be extended to the other instance variables.

# Release 3:
# What changed between the last release and this release?
  # In this release we also use the attr_writer to create the age variable. This allows us to modify the age variable without creating a separate method, change_my_age.
# What was replaced?
  # The change_my_age method was replaced with attr_writer :age.
# Is this code simpler than the last?
  # It is simpler and more readable.

# Release 5:
# What is a reader method?
  # A reader method
# What is a writer method?
# What do the attr methods do for you?
# Should you always use an accessor to cover your bases? Why or why not?
# What is confusing to you about these methods?