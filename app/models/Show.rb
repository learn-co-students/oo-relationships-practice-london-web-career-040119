class Show
  attr_reader :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def on_big_screen
    Movie.all.map(&:title).any?(title)
  end

  def self.all
    @@all
  end
end
