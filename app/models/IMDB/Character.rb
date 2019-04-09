class Character

  attr_reader :name, :actor
  @@all = []

  def initialize(name, actor)
    @name = name
    @actor = actor
    @@all << self
  end

  def self.all
    @@all
  end

  def movie_appearances
    MovieAppearance.all.select { |ma| ma.character == self }.length
  end

  def show_appearances
    ShowAppearance.all.select { |sa| sa.character == self }.length
  end

  def total_appearances
    movie_appearances + show_appearances
  end

  #Got this working. Makes total movie/show appearances, combines them and maxes by
  def self.most_appearances
    @@all.max_by { |char| char.total_appearances }.name
  end

end
