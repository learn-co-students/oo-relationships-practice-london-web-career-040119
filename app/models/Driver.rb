class Driver
  @@all = []

  def initialize
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

  def total_distance
    rides.map(&:distance).inject(:+)
  end

  def self.milage_cap(cap)
    all.select { |driver| driver.total_distance > cap }
  end
end
