class Bakery
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def desserts
    Dessert.all.select { |dessert| dessert.bakery == self }
  end

  def ingredients
    Ingredient.all.select { |ingredient| ingredient.dessert.bakery == self}
  end

  def average_calories
    self.ingredients.inject(0) { |sum, num| sum += num.calorie } / self.desserts.length
  end

  def shopping_list
    self.ingredients.map { |ingredient| ingredient.name }
  end

end
