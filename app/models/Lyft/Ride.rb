class Ride
  attr_reader :distance, :passenger, :driver, :name

  @@all = []
  @@distances = []

  def initialize(distance, passenger, driver)
    @distance = distance
    @passenger = passenger
    @driver = driver
    @@distances << distance
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    @@distances.inject(0.0) { |sum, num| sum + num } / @@distances.length
  end

end
