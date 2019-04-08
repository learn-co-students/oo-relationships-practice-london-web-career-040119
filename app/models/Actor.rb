class Actor
  attr_reader :name, :characters

  @@all = []

  def initialize(name)
    @name = name
    @characters = []
    @@all << self
  end

  def plays(character)
    @characters << character
  end

  def number_of_played_characters
    @characters.length
  end

  def self.most_characters
    @@all.max_by(&:number_of_played_characters)
  end

  def self.all
    @@all
  end
end
