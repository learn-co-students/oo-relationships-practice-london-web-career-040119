class Actor

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # .most_characters should return which actor has the most different characters played.
  # Tested, working and solved
  def self.most_actors
    @@all.max_by {|actors| actors.characters}.name
  end

  def characters
    Character.all.select { |actor| actor.actor == self }.length
  end

end
