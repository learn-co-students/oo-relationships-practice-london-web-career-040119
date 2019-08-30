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

  def characters
    Character.all.select { |character| character.actor == self}
  end

  def character_count
    characters.length
  end

  def self.most_characters
    @@all.max_by { |actor| actor.character_count }
    #counts = Hash.new(0)
    #Character.all.each { |i| counts[i.actor] += 1 }
    #counts.max_by { |k,v| v }[0]
  # - should return which actor has the most different characters played. (probably meryl streep)
  end

end
