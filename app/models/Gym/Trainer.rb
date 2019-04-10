class Trainer
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def clients
    Client.all.select { |client| client.trainer == self }
  end

  def num_of_clients
    clients.count
  end

  def self.most_clients
    # should find which trainer has the most clients. give that trainer a bonus!
    all.max_by(&:num_of_clients)
  end
end
