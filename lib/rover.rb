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
    elsif @heading == :west
      @heading = :north
    end
  end
  def turn_left
    if(@heading == :north)
      @heading = :west
    elsif @heading == :east
      @heading = :north
    elsif @heading == :south
      @heading = :east
    elsif @heading == :west
      @heading = :south
    end
  end
end
