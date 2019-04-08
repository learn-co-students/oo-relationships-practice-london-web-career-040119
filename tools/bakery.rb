require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

b1 = Bakery.new('MyBakery')
b2 = Bakery.new('NotMyBakery')

d1 = Dessert.new('Cake', b1)

d1i1 = Ingredient.new('sugar', 100, d1)
d1i2 = Ingredient.new('milk', 123, d1)
d1i3 = Ingredient.new('fluor', 55, d1)

d2 = Dessert.new('Muffin', b2)

d2i1 = Ingredient.new('sugar', 430, d2)
d2i2 = Ingredient.new('milk', 143, d2)
d2i3 = Ingredient.new('fluor', 552, d2)

d3 = Dessert.new('A better cake', b1)

d3i1 = Ingredient.new('sugar', 1000, d3)
d3i2 = Ingredient.new('milk', 1023, d3)
d3i3 = Ingredient.new('fluor', 505, d3)

Pry.start
