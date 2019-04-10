require "pry"

require_relative './guest.rb'
require_relative './listing.rb'
require_relative './trip.rb'


l1 = Listing.new("spain")
l2 = Listing.new("france")
l3 = Listing.new("new york")

g1 = Guest.new("elle")
g2 = Guest.new("hannah")
g3 = Guest.new("ash")

t1= Trip.new(g1, l3) # trips reply on guest and list
t2= Trip.new(g1, l1)
t3= Trip.new(g2, l2)
t4= Trip.new(g3, l1)
t5= Trip.new(g2, l2)
t6= Trip.new(g2, l3)
t7= Trip.new(g1, l1)



binding.pry

"eof"
