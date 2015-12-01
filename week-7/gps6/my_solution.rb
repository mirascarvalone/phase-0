# Virus Predictor

# I worked on this challenge with Dana.
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
#  require_relative allows us to locate the required file if it's in a different location than the file we are currently working in (that's what the "relative" means--where is this file *relative* to the one we are working in now).  Require uses the directory we are currently running the program from.
#
require_relative 'state_data'

class VirusPredictor

  #Defining variables and making them availabile for use as instance methods.  This allows us to create an instance of the VirusPredictor class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #This calls two other methods that are defined below.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #Takes the information from an instance of our class and mainpulates this data with control flow and calculations.  This control flow implies the higher the density, the more deaths.  It returns an integer due to the floor method (since these are deaths, we can't have a fraction of a death). This method also prints to the console how many people will die in this outbreak.

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density < 50
      number_of_deaths = (@population * 0.05).floor
    else
      number_of_deaths = (@population*((@population_density/50).floor)*(0.1)).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #This methods takes the population density and, using control flow, adds a certain amount of speed based on how dense it is.  The less dense a population is, the higher the speed.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected by additional factors we haven't added into this functionality.
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end



end

# Run report for all states
def run_report(hash)
  hash.each do |key, value|
    key = VirusPredictor.new(key, hash[key][:population_density], hash[key][:population])
    key.virus_effects
  end
end




#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

run_report(STATE_DATA)

#=======================================================================
# Reflection Section


# What are the differences between the two different hash syntaxes shown in the state_data file?
#   One of the hash syntaxes uses this arrow => and the other uses a semicolon :. In the second example, we see that we can reference the symbols population_density and population by just putting a semicolon after instead of also putting one before as we would normally do with symbols.
# What does require_relative do? How is it different from require?
#   Require relative allows us to thoroughly allocate a directory location that is different from the one we may be in. For example, if state_data.rb were in a different folder, we could write that here.
# What are some ways to iterate through a hash?
#   .each
# When refactoring virus_effects, what stood out to you about the variables, if anything?
#   When refactoring virus_effects, we noticed that we had already defined those three variables as instance variables, so we could access them elsewhere in the object and did not need to pass them as arguments for any of the methods.
# What concept did you most solidify in this challenge?
#   This challenge helped me think more about passing the same variables and methods to other methods.