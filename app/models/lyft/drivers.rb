class Driver
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
    Ride.all.select { |ride| ride.driver == self }
  end

  def passengers
    rides.map(&:passenger).uniq
  end

  #Not required for exercise but an excellent helper method for the one below.
  def total_distance
   rides.map {|ride| ride.distance}.inject(0, :+)
  end

  def self.mileage_cap(distance)
    @@all.select { |ride| ride.total_distance > distance }
  end

end
