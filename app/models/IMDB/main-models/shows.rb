class Show

attr_accessor :title

@@all=[]

def initialize(title)
  @title =title
  @@all << self
end

def on_the_big_screen
  match = Movie.all.find{|movie| movie.title ==self .title}
  if match != nil 
    true
  else
    false
  end
end





end
