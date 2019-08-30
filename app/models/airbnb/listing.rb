class Listing

  attr_reader :city

 	@@all = []

 	def initialize(city)
		@city = city
		@@all << self
	end

 	def self.all
		@@all
	end

  def trips
    Trip.all.select { |trip| trip.listing == self }
  # - returns an array of all trips at a listing
  end

  def guests
		trips.collect { |trip| trip.guest }.uniq
  # - returns an array of all guests who have stayed at a listing
	end

  def trip_count
  	trips.length
  #  - returns the number of trips that have been taken to that listing
  end

  def self.find_all_by_city(city)
  	@@all.select { |listing| listing.city == city}
  # - takes an argument of a city name (as a string) and returns all the listings for that city
  end

  def self.most_popular
    @@all.max_by { |listing| listing.trip_count} #self.all = @@all in this case
  #  - finds the listing that has had the most trips
  end

end
