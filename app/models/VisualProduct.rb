class VisualProduct
  attr_reader :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def roles
    Role.all.select { |role| role.visualproduct == self }
  end

  def actors
    roles.map(&:character).map(&:actors).uniq.flatten
  end

  def number_of_actors
    actors.count
  end

  def self.all
    if self == VisualProduct
      @@all
    else
      @@all.select { |instance| instance.class == self }
    end
  end
end
