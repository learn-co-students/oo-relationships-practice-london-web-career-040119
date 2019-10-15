require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

p1 = Passenger.new
p2 = Passenger.new
p3 = Passenger.new

d1 = Driver.new
d2 = Driver.new

r1 = Ride.new(10.0, p1, d1)
r2 = Ride.new(20.0, p1, d1)
r3 = Ride.new(20.0, p2, d1)
r3 = Ride.new(90.0, p2, d2)

Pry.start
