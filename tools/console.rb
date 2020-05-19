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

mark_cuban = VentureCapitalist.new("Mark Cuban", 1200000000)
dan_love = VentureCapitalist.new("Dan Love", 60000000000)
tom_love = VentureCapitalist.new("Tom Love", 50000000)
pat_love = VentureCapitalist.new("Pat Love", 750000)

### Funding Round INFO ###

first_funding_round = FundingRound.new(uber, dan_love, "Seed", 10000000)
second_funding_round = FundingRound.new(uber, mark_cuban, "Series A", 5000000)
third_funding_round = FundingRound.new(lyft, pat_love, "Series C", 150000)
fourth_funding_round = FundingRound.new(grubhub, dan_love, "Series A", 15000000)
fifth_funding_round = FundingRound.new(spotify, tom_love, "Series B", 20000000)
sixth_funding_round = FundingRound.new(lyft, mark_cuban, "Angel", 400000000)
seventh_funding_round = FundingRound.new(uber, tom_love, "Series C", 30000000)
eighth_funding_round = FundingRound.new(uber, dan_love, "Series A", 10000000)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
