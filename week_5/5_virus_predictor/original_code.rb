# U2.W5: Virus Predictor

# I worked on this challenge by myself

# EXPLANATION OF require_relative
# require_relative allows you to load a file that is relative to the file 
# containing the require_relative statement.
# So in this case, it loads the state_data file and makes the "STATE_DATA"
# Hash from that file available to this one

require_relative 'state_data'

class VirusPredictor

# Inititalize new object and store its arguments
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

# Run class instance methods predicted_deaths and speed_of_spread
# They are both private that's why they need to be called from within the class
# So that they can be run from outside the class through this method
  def virus_effects  #HINT: What is the SCOPE of instance variables? 
    #It's an instance variable, so it's scope is limied to this instance/the method def virus_effects
    #If one other instance changes this object it is not going to effect the value in this one
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method
  # It declars the predicted_deaths instance method "private" so that means that it caannot be
  # called from outside the class, but just from within the class. If cut and pasted above, virus_effects
  # could also not be called from outside the class, so the driver tests would not return any value
  # one would need to implement another not-private instance method that calls virus_effects from within
  # the class

# Calculate the number of expected deaths per state and print it in a string
  def predicted_deaths(population_density, population, state)
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Calculate the speed of spread per state and print it in a string
  def speed_of_spread(population_density, state) #in months
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

## Release 4: Implement a new feature!
## Create a report for all 50 states, not just the 4 listed below.  Is there a DRY way of doing this?

STATE_DATA.each do |key, value|
  state = []
  state << key
  value.each do |k,v|
    state << v
 end
state.join(", ")
state_virus = VirusPredictor.new(state[0], state[1], state[2], state[3], state[4])
state_virus.virus_effects
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

