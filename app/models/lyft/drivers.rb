class Driver

  attr_accessor  :name

  @@all=[]

    def initialize(name)
      @name =name
      @@all << self
    end

    def self.all
      @@all
    end

    def self.average_distance

    end

    def rides
      Ride.all.select{|ride| ride.driver == self}
    end

    def passengers
      rides.map{|ride| ride.passenger}.uniq
    end

    def total_distance #should calculate the total distance the passenger has travelled with the service
      distance = rides.map{|rides| rides.distance}
      distance.inject(0, :+)
    end

    def self.mileage_cap(distance)
        @@all.select{|driver| driver.total_distance >distance}
    end


end
