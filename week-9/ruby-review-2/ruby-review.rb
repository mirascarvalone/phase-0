# Introduction to Inheritance

# I worked on this challenge with Mo.


# Pseudocode
# Initialize global cohort with all attributes we want to use
#  Add methods to global cohort: add student (push to end of array), remove student (delete from array), and determine which phase is current:
  # To do this, IF date < immersive start date, return 0
  # IF date >= start date, < immerse start date + 21, return 1
  # IF date >= start date + 21, < immerse start date + 42, return 2
  # IF date >= start date + 42, < immerse start date + 63, return 3
# Add graduated method: if today's date after graduation date, then true, else false

# Create inherited class localcohort which takes same arguments + city

# Initial Solution
require 'date'

class GlobalCohort
  def initialize(students, name, p0_start_date, immersive_start_date, graduation_date, email_list, num_of_students)
    @students = students
    @name = name
    @p0_start_date = p0_start_date
    @immersive_start_date = immersive_start_date
    @graduation_date = graduation_date
    @email_list = email_list
    @num_of_students = num_of_students
  end

  def add_student(name)
    @students << name
  end

  def remove_student(name)
    @students.delete(name)
  end

  def currently_in_phase
    if Date.today < @immersive_start_date
      return 0
    elsif Date.today >= @immersive_start_date && Date.today < @immersive_start_date + 21
      return 1
    elsif Date.today >= @immersive_start_date + 21 && Date.today < @immersive_start_date + 42
      return 2
    elsif Date.today >= @immersive_start_date + 42 && Date.today < @immersive_start_date + 63
      return 3
    end
  end

  def graduated?
    Date.today >= @graduation_date ? true : false
  end
end

class LocalCohort < GlobalCohort
  def initialize(students, name, p0_start_date, immersive_start_date, graduation_date, email_list, num_of_students, city)
    super(students, name, p0_start_date, immersive_start_date, graduation_date, email_list, num_of_students)
    @city = city
  end
end

# Driver Code
Chorus = GlobalCohort.new(["mira", "mo"], 'chorus frogs', Date.new(2015,10,19), Date.new(2015,12,28), Date.new(2016,03,03), [1,2], 100)
puts Chorus.graduated?
puts Chorus.currently_in_phase
puts Chorus.add_student("mira")
puts Chorus.remove_student("mira")
Frogs = LocalCohort.new(["mira", "mo"], 'chorus frogs', Date.new(2015,10,19), Date.new(2015,12,28), Date.new(2016,03,03), [1,2],30, 'NYC')
puts Frogs.graduated?
puts Frogs.currently_in_phase
puts Frogs.add_student("mira")
puts Frogs.remove_student("mira")


# Refactored Solution





# Reflection

# What concepts did you review in this challenge?
#   We reviewed inheritance in this challenge.
# What is still confusing to you about Ruby?
#   Inheritance seems to make sense, however one remaining question I still have is if there are other ways of dealing with a subclass that takes a different number of arguments than its parent class (as we have here). The only way we could make the code work here was to list all of the inputted arugments in the initialize method of both classes, but this seems somewhat uncessary as the localcohort is inheriting most of those from the globalcohort, which we just defined.
# What are you going to study to get more prepared for Phase 1?
#   I didn't read the associated chapter in the well grounded rubyist, so I'm hoping that clears some of this up.