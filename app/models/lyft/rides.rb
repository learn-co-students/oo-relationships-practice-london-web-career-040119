class Ride

    attr_accessor :driver, :passenger, :distance

    @@all = []
    @@distance =[]

    def initialize(driver, passenger, distance)
      @passenger = passenger
      @driver = driver
      @distance = distance
      @@distance << distance
      @@all << self

    end

    def self.all
      @@all
    end

   def self.average_distance #should find the average distance of all ride
     @@distance.inject(0.0) {|sum, num| sum+num}/ @@distance.length
  end
end
