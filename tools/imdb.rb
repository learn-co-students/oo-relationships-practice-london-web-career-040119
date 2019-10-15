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
s1e1 = Episode.new('Game of Thrones: EP1', s1)
s1e2 = Episode.new('Game of Thrones: EP2', s1)
s2e1 = Episode.new('Sherlock Holmes: EP1', s2)
s2e2 = Episode.new('Sherlock Holmes: EP2', s2)

c1 = Character.new('R2-D2')
c2 = Character.new('C3PO')
c3 = Character.new('Dr. Watson')
c4 = Character.new('Hodor')
c5 = Character.new('Arya Stark')
c6 = Character.new('Leia Organa')

a1 = Actor.new('A little rubbish bin')
a2 = Actor.new('Golden Robot')
a3 = Actor.new('Martin Freeman')
a4 = Actor.new('Kristian Nairn')
a5 = Actor.new('Maisie Williams')
a6 = Actor.new('Carrie Fisher')
c1.actor = a1
c2.actor = a2
c3.actor = a3
c4.actor = a4
c5.actor = a5
c6.actor = a6

# DROIDS
Role.new(m1, c1)
Role.new(m2, c1)
Role.new(m3, c1)
Role.new(m1, c2)
Role.new(m2, c2)
Role.new(m3, c2)
Role.new(m4, c2)

# LEIA
Role.new(m2, c6)

# HOLMES
Role.new(m5, c3)
Role.new(s2e1, c3)
Role.new(s2e2, c3)

# HODOR
Role.new(s1e1, c4)
Role.new(s1e2, c4)

# ARYA
Role.new(s1e2, c5)

# MOST ACTORS
m6 = Movie.new('Dr. Jekyll and Mr. Hyde')
jekyll = Character.new('Dr. Jekyll')
hyde = Character.new('Mr. Hyde')
lanyon = Character.new('Dr. Charles Lanyon')
caine = Actor.new('Michael Caine')
hyde.actor = caine
jekyll.actor = caine
lanyon.actor = caine
Role.new(m6, hyde)
Role.new(m6, jekyll)
Role.new(m6, lanyon)

Pry.start
