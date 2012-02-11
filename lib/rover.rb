class Rover
  attr_accessor :heading

  def initialize

  end
  def turn_right
    @heading = :east
  end
  def turn_left
    @heading = :west
  end
end
