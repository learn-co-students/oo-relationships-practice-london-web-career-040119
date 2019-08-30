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

  def contracts
    Contract.all.select { |contract| contract.location == self}
  end

  def trainers
    contracts.collect { |contract| contract.trainer }
  end

  def clients
    clients = []
    Client.all.select { |client| trainers.each { |trainer| clients << client if client.trainer == trainer}}
    clients
  end

  def clients_count
    clients.length
  end

  def self.least_clients
    @@all.min_by { |x| x.clients_count} 
  #  - should find which location has the least clients training there.
  end

end
