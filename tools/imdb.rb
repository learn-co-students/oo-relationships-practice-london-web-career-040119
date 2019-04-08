require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

m1 = Movie.new('Star Wars: New Hope')
m2 = Movie.new('Star Wars: Empire Strikes Back')
m3 = Movie.new('Star Wars: Return of Jedi')
m4 = Movie.new('Star Wars: Attack of the Clones')
m5 = Movie.new('Sherlock Holmes')

s1 = Show.new('Game of Thrones')
s2 = Show.new('Sherlock Holmes')

c1 = Character.new('R2-D2')
c2 = Character.new('C3PO')
c3 = Character.new('Dr. Watson')
c4 = Character.new('Hodor')

a1 = Actor.new('A little rubbish bin')
a1.plays(c1)

a2 = Actor.new('Golden Robot')
a2.plays(c2)

a3 = Actor.new('Martin Freeman')
a3.plays(c3)

a4 = Actor.new('Kristian Nairn')
a4.plays(c4)

# DROIDS
Role.new(m1, c1)
Role.new(m2, c1)
Role.new(m3, c1)
Role.new(m1, c2)
Role.new(m2, c2)
Role.new(m3, c2)
Role.new(m4, c2)

# HOLMES
Role.new(m5, c3)
Role.new(s2, c3)

# HODOR
Role.new(s1, c4)

# MOST ACTORS
m6 = Movie.new('Dr. Jekyll and Mr. Hyde')
jekyll = Character.new('Dr. Jekyll')
hyde = Character.new('Mr. Hyde')
lanyon = Character.new('Dr. Charles Lanyon')
caine = Actor.new('Michael Caine')
caine.plays(hyde)
caine.plays(jekyll)
caine.plays(lanyon)
Role.new(m6, hyde)
Role.new(m6, jekyll)
Role.new(m6, lanyon)

Pry.start
