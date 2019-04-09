class Passenger
  attr_reader :name
 @@all = []
 def initialize(name)
   @name = name
   @@all << self
 end

 def self.all
   @@all
 end

 def rides
   Ride.all.select { |ride| ride.passenger == self }
 end

 def drivers
   rides.map(&:driver).uniq
 end

 def total_distance
  rides.map {|ride| ride.distance}.inject(:+)
 end

 def self.premium_members
   @@all.select { |ride| ride.total_distance > 100.00 }
 end
end
