class Role
  attr_reader :visualproduct, :character

  @@all = []

  def initialize(visualproduct, character)
    @visualproduct = visualproduct
    @character = character
    @@all << self
  end

  def self.find_by_visualproduct(visualproduct)
    @@all.select { |role| role.visualproduct == visualproduct }
  end

  def self.all
    @@all
  end
end
