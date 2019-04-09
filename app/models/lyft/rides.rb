class Ride
  attr_accessor :driver, :passenger, :distance
  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance.to_f
    @@all << self
  end

  def self.all
    @@all
  end
  #   #passenger
  # returns the passenger object for that ride. This is done in the accessor above
  # #driver
  # returns the driver object for that ride. Same
  # .average_distance
  # should find the average distance of all rides
  def self.average_distance
    total = @@all.collect {|ride| ride.distance}.inject(0, :+)
    average = (total / @@all.length).round(2)
  end

  #@@distance,inject(0.0) {|sum, num| sum+num}/@@distance.length

end
