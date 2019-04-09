require "pry"
require_relative './drivers'
require_relative './rides'
require_relative './passengers'

d1 = Driver.new("Abba")
d2 = Driver.new("Bobby")
d3 = Driver.new("Crew")
d4 = Driver.new("Den")

p1 = Passenger.new("Kitten")
p2 = Passenger.new("Pup")
p3 = Passenger.new("Foal")
p4 = Passenger.new("Piglet")

r1 = Ride.new(d1, p2, 300)
r2 = Ride.new(d1, p2, 100)
r3 = Ride.new(d2, p2, 30)
r4 = Ride.new(d3, p4, 20)
r5 = Ride.new(d3, p1, 130)
r6 = Ride.new(d4, p2, 200)
r7 = Ride.new(d1, p3, 101)
r8 = Ride.new(d1, p1, 101)
r9 = Ride.new(d2, p4, 101)

binding.pry
'done'
