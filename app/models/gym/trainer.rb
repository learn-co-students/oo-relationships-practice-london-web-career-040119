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

  def clients_per_trainer
    Client.all.select { |client| client.trainer == self}
  end

  def clients_trainer_length
    clients_per_trainer.length
  end

  def self.most_clients
    Trainer.all.max_by { |trainer| trainer.clients_trainer_length}
  #  - should find which trainer has the most clients.
  end
end
