require_relative './VisualProduct'

class Movie < VisualProduct
  def self.most_actors
    all.max_by(&:number_of_actors)
  end
end
