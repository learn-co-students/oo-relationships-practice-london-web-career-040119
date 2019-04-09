class Character
  attr_reader :name
  attr_accessor :actor
  @@all = []

  def initialize(name)
    @name = name
    @actor = nil
    @@all << self
  end

  def apperances
    Role.all.select { |role| role.character == self }
  end

  def number_of_apperances
    apperances.count
  end

  def self.most_appearances
    all.max_by(&:number_of_apperances)
  end

  def self.all
    @@all
  end
end
