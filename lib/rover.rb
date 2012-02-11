class Rover
  attr_accessor :heading

  def initialize

  end
  def turn_right
    if(@heading == :north)
      @heading = :east
    elsif @heading == :east
      @heading = :south
    elsif @heading == :south
      @heading = :west
    end
  end
  def turn_left
    if(@heading == :north)
      @heading = :west
    elsif @heading == :east
      @heading = :north
    elsif @heading == :south
      @heading = :east
    end
  end
end
