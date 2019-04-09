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
    Ride.all.select { |ride| ride.passenger == self}
  end

  def drivers
    rides.map { |ride| ride.driver }.uniq
  end

  def total_distance
    distances_array = rides.map { |ride| ride.distance }
    distances_array.inject(0) { |sum, num| sum + num }
  end

  def self.premium_members
    @@all.select { |passenger| passenger.total_distance >= 100 }
  end

end
