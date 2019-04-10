# Trip belongs to the listing and the guest

#guest and listing have many to many relationships - hench are linked through the trips class

class Trip  # this will be the joining model linking guests and listings

  attr_accessor :guest, :listing

    @@all = []

  def initialize(guest, listing) # initialize each new song with name artist and genre
     @guest = guest
     @listing = listing
     @@all << self
  end

  def self.all
    @@all
  end
end
