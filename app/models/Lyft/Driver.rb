class Driver
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    Ride.all.select { |ride| ride.driver == self}
  end

  def passengers
    rides.map { |ride| ride.passenger }.uniq
  end

  def self.all
    @@all
  end

  def total_distance
    driver_distances = rides.map { |ride| ride.distance }
    driver_distances.inject(0) { |sum, num| sum + num }
  end

  def self.mileage_cap(distance)
    @@all.select { |driver| driver.total_distance >= distance }
  end

end
