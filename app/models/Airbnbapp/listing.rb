# listing has many trips and trips belongs to listings

#guest and listing have many to many relationships

class Listing

   attr_accessor :city

   @@all = []

   def initialize(city)
     @city = city
     @@all << self
   end

   def trips # gather all trips for a certain listing
     Trip.all.select {|trip| trip.listing == self } # this is a list of trips taking under a certain listing - within that trip will contain a guest and the current listing (current instance)- looks in to the listing from Trips and compares to self
   end

   def guests # collect all guests that have gone on a certain trip
     trips.map { |trip| trip.guest }.uniq # use .uniq since same guest may have gone on the same trip more than once
   end

   # [<#trip56789876>, <#trip56789876>, <#trip56789876>]
   # [<#guest56789876 @name="Ellie">, <#guest56789876> @name="guy", <#guest56789876>]


   def self.all  # returns an array of all listings
     @@all
   end

  def trip_count # returns the number of trips that have been taken to that listing
    trips.length  # takes the list of trips from a certain listing using out trips method and then applying the .length method
  end

  def self.find_all_by_city(city)
    self.all.select { |listing| listing.city == city } # could also do @@all than self.all
  end

  def self.most_popular #finds the listing that has had the most trips - the trip the the guests have taken the most
    @all.max_by{|listing| listin.trip_count} # select the trip count that has the max(highest) count by iterating over each trip count
  end

end
