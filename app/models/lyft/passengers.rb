class Passenger

  attr_accessor  :name

  @@all=[]

    def initialize(name)
      @name =name
      @@all << self
    end

    def self.all
      @@all
    end

    def rides
      Ride.all.select{|ride| ride.passenger == self}
    end

    def drivers
      rides.map{|ride| ride.driver}.uniq
    end


    def total_distance #should calculate the total distance the passenger has travelled with the service
      rides.map {|rides| rides.distance}.inject(:+)

    end

    def self.premium_members #should find all passengers who have travelled over 100 miles with the service
      @@all.select{|passenger| passenger.total_distance>100.00}
    end

end
