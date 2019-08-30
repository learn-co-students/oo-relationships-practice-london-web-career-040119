class Startup


  attr_reader :founder, :name, :domain

  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  def pivot=(domain, name) #setter
    @domain = domain
    @name = name
  end

  def pivot(domain, name) #getter
    @domain = domain
    @name = name
  end

  def self.all
    @@all
  end

  def self.find_by_founder(founder_name) #
    @@all.find { |start| start.founder == founder_name }
  end

   def self.domains
    self.all.map { |dom| dom.domain }
  end

   def sign_contract(venture_capitalist, type, investment)
    FundingRound.new(self, venture_capitalist, type, investment)
  end

   def num_funding_rounds
    FundingRound.all.select {|rounds| rounds.startup == self}.count
  end

   def startup
    FundingRound.all.select { |stup| stup.startup == self }
  end

  def investors
    startup.map { |investors| investors.venture_capitalist}.uniq
  end

   def big_investors
    investors.select { |investor| VentureCapitalist.tres_commas_club.include?(investor) }
  end

end
