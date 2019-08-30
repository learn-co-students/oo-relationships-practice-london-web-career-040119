class Movie

  attr_reader :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def appearances
    MovieAppearance.all.select { |ma| ma.movie == self }
  end

  def characters
    appearances.map { |ma| ma.character }.uniq
  end

  def actors
    characters.map { |char| char.actor }.uniq
  end

  def actor_count
    actors.length
  end

  def self.most_actors
    @@all.max_by { |movie| movie.actor_count }
  #  - should return the movie which has the most actors in it.
  #  - This is so the studio knows never to hire that director again because he/she makes expensive movies
  end

end
