class Rover
  def initialize(heading)
    @heading = Direction.find(heading)
  end
  def heading
    @heading.direction
  end
  def turn_right
    @heading = @heading.turn_right
  end
  def turn_left
    @heading = @heading.turn_left
  end
end

class North
  def direction
    :north
  end
  def turn_right
    East.new
  end
  def turn_left
    West.new
  end
end
class East
  def direction
    :east
  end
  def turn_right
    South.new
  end
  def turn_left
    North.new
  end
end
class West
  def direction
    :west
  end
  def turn_right
    North.new
  end
  def turn_left
    South.new
  end
end
class South
  def direction
    :south
  end
  def turn_right
    West.new
  end
  def turn_left
    East.new
  end
end

class Direction
  @@directions = {:north => North.new, :east => East.new, :west => West.new, :south => South.new}
  def self.find(heading)
    @@directions[heading]
  end
end
