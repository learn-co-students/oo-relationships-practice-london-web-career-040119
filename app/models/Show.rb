require_relative './VisualProduct'

class Show < VisualProduct
  def on_big_screen
    Movie.all.map(&:title).any?(title)
  end
end
