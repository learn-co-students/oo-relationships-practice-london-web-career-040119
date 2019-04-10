class Ingredient
  attr_reader :name, :calorie, :dessert

  @@all = []

  def initialize(name, calorie, dessert)
    @name = name
    @calorie = calorie
    @dessert = dessert
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_all_by_name(name)
    all.select { |ingredient| ingredient.name.include? name }
  end

  def bakery
    dessert.bakery
  end
end
