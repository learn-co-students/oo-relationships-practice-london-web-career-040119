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
    MovieAppearance.all.select {|appearance| appearance.character == self}
  end

  def show_appearances
    ShowAppearance.all.select {|appearance| appearance.character == self}
  end

  def appearances_count
    movie_appearances.concat(show_appearances).count
  end

  def self.most_appearances
    @@all.max_by { |character| character.appearances_count }
  #  - should return which character of film/television appears in the most films or tv shows
  end

end
