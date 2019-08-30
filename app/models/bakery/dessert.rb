class Dessert
  attr_reader :dessert, :bakery
  @@all = []

  def initialize(dessert, bakery)
    @dessert = dessert
    @bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    Ingredient.all.select { |ingredient| ingredient.dessert == self}
  # - should return an array of ingredients for the dessert
  end

  def calories
    ingredients.collect { |ingredient| ingredient.calories}.sum
  # - should return a number totaling all the calories for all the ingredients included in that dessert
  end

end
