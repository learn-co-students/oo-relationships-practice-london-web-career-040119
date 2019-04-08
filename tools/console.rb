require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# rebecca = Guest.new("Rebecca")
# lucy = Guest.new("Lucy")
# ed = Guest.new("Ed")
# danny = Guest.new("Danny")
#
# house = Listing.new("London")
# cottage = Listing.new("Tokyo")
# flat = Listing.new("Paris")
# appartment = Listing.new("New York")
# maisonette = Listing.new("New York")
# studio = Listing.new("New York")
#
# birthday = Trip.new(rebecca, cottage)
# birthday_two = Trip.new(rebecca, house)
# wedding = Trip.new(danny, flat)
# party = Trip.new(ed, maisonette)
# spring_break = Trip.new(lucy, studio)
# holiday = Trip.new(danny, studio)
# vacation = Trip.new(rebecca, house)
# christmas = Trip.new(ed, flat)

mario = Passenger.new("Mario")
luigi = Passenger.new("Luigi")
princess_peach = Passenger.new("Princess Peach")
harry = Passenger.new("Harry")
ron = Passenger.new("Ron")
hermione = Passenger.new("Hermione")

d1 = Driver.new("The Stig")
d2 = Driver.new("Hamilton")
d3 = Driver.new("Mary Poppins")
d4 = Driver.new("Aladdin")

r1 = Ride.new(455.0, mario, d1)
r2 = Ride.new(75.0, luigi, d2)
r3 = Ride.new(7.6, princess_peach, d3)
r4 = Ride.new(45.7, harry, d2)
r5 = Ride.new(498.1, ron, d4)
r6 = Ride.new(9.5, hermione, d3)

Pry.start
