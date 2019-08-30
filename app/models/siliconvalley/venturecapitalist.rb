class VentureCapitalist

  attr_accessor :name, :total_worth

  @@all = []

  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth
    @@all << self
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    VentureCapitalist.all.select { |capitalist| capitalist.total_worth > 1000000000 }
  end

  def offer_contract(startup, venture_capitalist, type, investment)
    FundingRound.new(startup, venture_capitalist, type, investment)
  end

  def funding_rounds
    FundingRound.all.select { |round| round.venture_capitalist == self }
  end

  def portfolio
    funding_rounds.map { |port| port.startup }
  end

  def biggest_investment
    FundingRound.all.map { |rounds| rounds.investment}.sort.reverse[0]
  end

  def invested(domain)
    funding_rounds.map {|rounds| rounds.investment}.sum
  end

end
