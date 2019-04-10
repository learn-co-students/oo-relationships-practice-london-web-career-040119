require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


g1 = Guest.new('Nicolas')
g2 = Guest.new('Elle')
g3 = Guest.new('Xabi')


l1 = Listing.new('London')
l2 = Listing.new('LA')
l3= Listing.new('buenos aires')

t1 = Trip.new(l1,g1)
t2 = Trip.new(l2,g2)
t3 = Trip.new(l2,g3)
t4 = Trip.new(l3,g2)
t5 = Trip.new(l1,g3)
t6 = Trip.new(l2,g2)





Pry.start
