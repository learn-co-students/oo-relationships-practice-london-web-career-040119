require_relative './VisualProduct'

class Episode < VisualProduct
  attr_reader :show

  def initialize(title, show)
    @show = show
    super(title)
  end
end
