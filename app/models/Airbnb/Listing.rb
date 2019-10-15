class Listing
  attr_accessor :city

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city)
    all.select { |listing| listing.city == city }
  end

  def trips
    Trip.all.select { |trip| trip.listing == self }
  end

  def trip_count
    trips.length
  end

  def guests
    trips.map(&:guest).uniq
  end

  def self.most_popular
    all.max_by(&:trip_count)
  end
end
