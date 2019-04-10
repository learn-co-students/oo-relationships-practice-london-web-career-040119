class Project
  attr_reader :name, :goal, :creator

  @@all = []

  def initialize(name, creator, goal)
    @name = name
    @creator = creator
    @goal = goal
    @@all << self
  end

  def self.all
    @@all
  end

  def pledges
    Pledge.all.select { |pledge| pledge.project == self }
  end

  def sum_of_pledges
    pledges.map(&:amount).inject(:+) || 0
  end

  def backers
    pledges.map(&:pledger).uniq
  end

  def num_of_backers
    backers.count
  end

  def self.no_pledges
    # returns all projects which have no pledges yet
    all.select { |project| project.pledges.empty? }
  end

  def self.above_goal
    # returns all projects which have met or exceeded their pledge goal
    all.select { |project| project.sum_of_pledges > project.goal }
  end

  def self.most_backers
    # returns the project with the highest number of backers
    all.max_by(&:num_of_backers)
  end
end
