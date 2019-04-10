class Pledge
  attr_reader :pledger, :project, :amount

  @@all = []

  def initialize(pledger, project, amount)
    @pledger = pledger
    @project = project
    @amount = amount
    @@all << self
  end

  def self.all
    @@all
  end
end
