class Bakery
  attr_reader :name, :bakery

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
    desserts.map(&:ingredients).flatten
  end

  def shopping_list
    desserts.map(&:ingredients).flatten.map(&:name)
  end

  def average_calories
    desserts.map(&:calories).inject(:+) / desserts.length.to_f
  end
end
