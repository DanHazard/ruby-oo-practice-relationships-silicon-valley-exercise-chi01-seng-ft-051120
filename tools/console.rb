require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

### STARTUP INFO ###

uber = Startup.new("Uber", "Travis K", "www.uber.com")
lyft = Startup.new("Lyft", "John Doe", "www.lyft.com")
grubhub = Startup.new("Grubhub", "Jane Doe", "www.grubhub.com")
spotify = Startup.new("Spotify", "Swedish Dan", "www.spotify.com")

### Venture Capitalist INFO ###

### Funding Round INFO ###

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
