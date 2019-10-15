class Ride
  attr_reader :distance, :passenger, :driver

  @@all = []

  def initialize(distance, passenger, driver)
    @distance = distance
    @passenger = passenger
    @driver = driver
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    all.map(&:distance).inject(:+) / all.length.to_f
  end
end
