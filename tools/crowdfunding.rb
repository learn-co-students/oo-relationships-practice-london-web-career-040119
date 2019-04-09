require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

u1 = User.new('u1')
u2 = User.new('u2')
u3 = User.new('u3')
u4 = User.new('u4')

# p1 = u1.create_project('p1', 100)
# p2 = u2.create_project('p2', 200)
# p3 = u2.create_project('p3', 100)

# pl1 = u3.pledge_project(p1, 30)
# pl2 = u3.pledge_project(p2, 15)
# pl3 = u2.pledge_project(p1, 90)

p1 = Project.new('p1', u1, 100)
p2 = Project.new('p2', u2, 100)
p3 = Project.new('p3', u2, 100)

pl1 = Pledge.new(u3, p1, 30)
pl2 = Pledge.new(u3, p2, 30)
pl3 = Pledge.new(u2, p1, 30)
pl4 = Pledge.new(u2, p1, 50)
pl5 = Pledge.new(u4, p1, 10)
pl6 = Pledge.new(u4, p1, 10)

(1..100).each do |_idx|
  Pledge.new(u1, p1, 10)
end

Pry.start
