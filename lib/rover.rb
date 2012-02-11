class Rover
  attr_accessor :heading

  def initialize

  end
  def turn_right
    if(@heading == :north)
      @heading = :east
    elsif @heading == :south
      @heading = :west
    end
  end
  def turn_left
    if(@heading == :north)
      @heading = :west
    elsif @heading == :south
      @heading = :east
    end
  end
end
