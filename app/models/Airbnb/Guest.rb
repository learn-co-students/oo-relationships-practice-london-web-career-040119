class Guest
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_all_by_name(name)
    all.select { |guest| guest.name == name }
  end

  def trips
    Trip.all.select { |trip| trip.guest == self }
  end

  def trip_count
    trips.length
  end

  def listings
    trips.map(&:listing).uniq
  end

  def pro_traveller
    trip_count > 1
  end
end
