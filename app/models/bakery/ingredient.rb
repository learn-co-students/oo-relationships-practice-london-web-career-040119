class Ingredient
  attr_reader :ingredient, :dessert, :calories
  @@all = []

  def initialize(ingredient, dessert, calories)
    @ingredient = ingredient
    @dessert = dessert
    @calories = calories
    @@all << self
  end

  def self.all
    @@all
  end

  def bakery
    dessert.bakery
  # - should return the bakery object for the bakery that uses that ingredient
  end

  def self.find_all_by_name(name)
    @@all.select {|ingredient| ingredient.ingredient.include?(name)}.map { |ingr| ingr.ingredient }.join(", ")
  #  - should take a string argument return an array of all ingredients that include that string in their name
  #  - .find_all_by_name('chocolate') might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
  #  - make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')
  end


end
