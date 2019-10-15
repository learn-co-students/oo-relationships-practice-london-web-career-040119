class Actor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def characters
    Character.all.select { |character| character.actor == self }.uniq
  end

  def number_of_characters
    characters.count
  end

  def self.most_characters
    # should return which character of film/television appears in the most films or tv shows
    all.max_by(&:number_of_characters)
  end

  def self.all
    @@all
  end
end
