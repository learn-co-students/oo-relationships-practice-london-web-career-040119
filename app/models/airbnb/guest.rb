class Guest

  attr_reader :name

 	@@all = []

 	def initialize(name)
		@name = name
		@@all << self
	end

 	def self.all
		@@all
	end

  def trips
    Trip.all.select { |trip| trip.guest == self }
  # - returns an array of all trips a guest has made
  end

  def listings
  	trips.collect { |trip| trip.listing}.uniq
  # - returns an array of all guests who have stayed at a listing
  end

  def trip_count
  	trips.length
  # - returns the number of trips a guest has taken
  end

  def self.pro_traveller
		self.all.select { |guest| guest.trip_count > 1 }
  #  - returns an array of all guests who have made over 1 trip
	end

  def self.find_all_by_name(name)
		self.all.select { |guest| guest.name == name }
  # - takes an argument of a name (as a string), returns the all guests with that name
	end

end
