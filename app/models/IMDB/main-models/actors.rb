class Actor

  attr_accessor :name

  @@all=[]

  def initialize(name )
    @name =name
    @@all << self
  end

  def self.most_characters
  end


end
