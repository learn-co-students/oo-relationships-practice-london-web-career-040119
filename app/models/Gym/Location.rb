class Location
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def employments
    Employment.all.select { |employment| employment.location == self }
  end

  def trainers
    employments.map(&:trainer)
  end

  def clients
    trainers.map(&:clients).flatten
  end

  def number_of_clients
    clients.count
  end

  def self.least_clients
    # should find which location has the least clients training there.
    # we need to increase the marketing spend for that location!
    all.min_by(&:number_of_clients)
  end
end
