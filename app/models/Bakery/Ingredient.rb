class Ingredient
  attr_reader :name, :dessert, :calorie

  @@all = []

  def initialize(name, dessert, calorie)
    @name = name
    @dessert = dessert
    @calorie = calorie
    @@all << self
  end

  def self.all
    @@all
  end

  def bakery
    self.dessert.bakery
  end

  def self.find_all_by_name(ingredient) #pass ingredient as a string
    self.all.select { |item| item.name.include?(ingredient) }
  end

end
