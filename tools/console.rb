require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


g1 = Guest.new("Ant")
g2 = Guest.new("Ben")
g3 = Guest.new("Chris")
g4 = Guest.new("Dan")

h1 = Listing.new("Mansion")
h2 = Listing.new("House")
h3 = Listing.new("Flat")
h4 = Listing.new("Shed")

t1 = Trip.new(g1, h1)
t1 = Trip.new(g1, h2)
t1 = Trip.new(g2, h2)
t1 = Trip.new(g3, h3)

Pry.start
