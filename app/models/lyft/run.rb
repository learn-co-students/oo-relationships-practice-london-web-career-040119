require "pry"

require_relative './drivers.rb'
require_relative './rides.rb'
require_relative './passengers.rb'

#drivers

d1 = Driver.new("dave")
d2 = Driver.new("bob")
d3 = Driver.new("frank")

#passengers

p1 = Passenger.new("elle")
p2 = Passenger.new("hannah")
p3 = Passenger.new("ash")

#rides

r1= Ride.new(d1, p3, 300)
r2= Ride.new(d1, p1, 400)
r3= Ride.new(d2, p2, 50)
r4= Ride.new(d3, p1, 60)
r5= Ride.new(d2, p2, 150)
r6= Ride.new(d2, p3, 60)
r7= Ride.new(d1, p1, 90)



binding.pry

"eof"
