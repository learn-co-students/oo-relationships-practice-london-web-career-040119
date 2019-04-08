class Character
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def apperances
    Role.all.select { |role| role.character == self }
  end

  def number_of_apperances
    apperances.count
  end

  def actors
    Actor.all.select { |actor| actor.characters.include?(self) }
  end

  def self.most_appearances
    Role.all.map(&:character).max_by(&:number_of_apperances)
  end

  def self.all
    @@all
  end
end
