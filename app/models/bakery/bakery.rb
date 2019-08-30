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
    Dessert.all.select {|dessert| dessert.bakery == self}
  # - should return an array of desserts the bakery makes
  end

  def ingredients
    desserts.map { |dessert| Ingredient.all.select {|ingredient| ingredient.dessert == dessert}}.flatten
  # - should return an array of ingredients for the bakery's desserts
  end


  def average_calories
    ingredients.collect { |ingredient| ingredient.calories}.sum.to_f/self.desserts.length
  #  - should return a number totaling the average number of calories for the desserts sold at this bakery
  end

  def shopping_list
    ingredients.map { |ingredient| ingredient.ingredient}.join(", ")
  #- should return a string of names for ingredients for the bakery
  end

end
