class Passenger
  @@all = []
  def initialize
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
    return 0 if rides.empty?

    rides.map(&:distance).inject(:+)
  end

  def self.premium_members
    all.select { |passenger| passenger.total_distance > 100 }
  end
end
