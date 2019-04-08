require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

rebecca = Guest.new("Rebecca")
lucy = Guest.new("Lucy")
ed = Guest.new("Ed")
danny = Guest.new("Danny")

house = Listing.new("London")
cottage = Listing.new("Tokyo")
flat = Listing.new("Paris")
appartment = Listing.new("New York")
maisonette = Listing.new("New York")
studio = Listing.new("New York")

birthday = Trip.new(rebecca, cottage)
birthday_two = Trip.new(rebecca, house)
wedding = Trip.new(danny, flat)
party = Trip.new(ed, maisonette)
spring_break = Trip.new(lucy, studio)
holiday = Trip.new(danny, studio)
vacation = Trip.new(rebecca, house)
christmas = Trip.new(ed, flat)

Pry.start
