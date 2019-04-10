#guest has many trips and Trips belong to guests

#guest and listing have many to many relationships - and will be linked by trips

class Guest

attr_accessor  :name

@@all=[]

  def initialize(name)
    @name =name
    @@all << self
  end

  def self.all
    @all
  end

def trips
  Trip.all.select {|trip| trip.guest == self }
end


  def listings
    trips.map{|trip| trip.listing}.uniq # since might go to same listing more than one use .uniq
  end

  def trip_count
    trips.length
  end

  def self.pro_traveller
    @@all.select{|guest| guest.trip_count >1}
  end

def self.find_all_by_name(name)
  @@all.select{|guest| guest.name == name}
end

end
