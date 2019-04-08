require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

g1 = Guest.new('aaaa')
g2 = Guest.new('bbbb')
g3 = Guest.new('cccc')

l1 = Listing.new('New York')
l2 = Listing.new('London')
l3 = Listing.new('Tokyo')

t1 = Trip.new(g1, l1)
t2 = Trip.new(g1, l2)
t3 = Trip.new(g1, l3)
t4 = Trip.new(g2, l2)
t5 = Trip.new(g3, l2)
t6 = Trip.new(g2, l2)

Pry.start
