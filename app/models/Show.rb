class Show
  attr_reader :title, :episodes

  @@all = []

  def initialize(title)
    @title = title
    @episodes = []
    @@all << self
  end

  def add_episode(episode)
    @episodes << episode
  end

  def roles
    Role.all.select { |role| episodes.include?(role.visualproduct) }.uniq
  end

  def characters
    roles.map(&:character).uniq
  end

  def actors
    roles.map(&:character).map(&:actors).uniq.flatten
  end

  def number_of_actors
    actors.count
  end

  def on_big_screen
    Movie.all.map(&:title).any?(title)
  end

  def self.all
    @@all
  end
end
