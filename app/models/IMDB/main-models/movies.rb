class Movie

  attr_accessor :title

    @@all=[]

  def initialize(title)
    @title =title
    @@all << self
  end

  def self.all
    @all
  end

  def appearances
    Movieappearance.all.select{|ma| ma.movie == self }
  end

  def charaters
    appearances.map{|ma| ma.charater}
  end

  def actors
    charaters.map { |charater| charater.actor }.uniq
  end

  def actor_count
    actors.lenth
  end


  def self.most_actors
    @@all.max_by{|movie| movie.actor_count}
  end


end
