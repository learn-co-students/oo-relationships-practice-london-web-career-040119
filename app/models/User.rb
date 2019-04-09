class User
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pledges
    Pledge.all.select { |pledge| pledge.pledger == self }
  end

  def num_of_pledges
    pledges.count
  end

  def self.highest_pledge
    # returns the user who has made the highest pledge
    Pledge.all.max_by(&:amount).pledger
  end

  def self.multi_pledger
    # returns all users who have pledged to multiple projects
    all.select { |user| user.num_of_pledges > 1 }
  end

  def self.project_creator
    # returns all users who have created a project
    Project.all.map(&:creator).uniq
  end
end
