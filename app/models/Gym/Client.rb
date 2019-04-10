class Client
  attr_reader :name, :trainer

  @@all = []

  def initialize(name)
    @name = name
    @trainer = nil
    @@all << self
  end

  def assign_trainer(trainer)
    # should take a trainer as argument and assign it to the client
    @trainer = trainer
  end

  def self.all
    @@all
  end
end
