require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


l1 = Listing.new("spain")
l2 = Listing.new("france")
l3 = Listing.new("new york")

g1 = Guest.new("elle")
g2 = Guest.new("hannah")
g3 = Guest.new("ash")

t1= Trip.new(l1, g3) # trips reply on guest and list
t2= Trip.new(l1, g1)
t3= Trip.new(l2, g2)
t4= Trip.new(l3, g1)
t5= Trip.new(l2, g2)
t6= Trip.new(l2, g3)
t7= Trip.new(l1, g1)

Pry.start
