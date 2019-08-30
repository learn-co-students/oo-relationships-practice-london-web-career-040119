class Client

  attr_reader :name
  attr_accessor :trainer
  @@all = []

  def initialize(name, trainer)
    @name = name
    @trainer = trainer
    @@all << self
  end

  def self.all
    @@all
  end

  def assign_trainer(trainer)
    @trainer = trainer if Trainer.all.include?(trainer)
  #  - should take a trainer as argument and assign it to the client
  end

end
