class Rover
  attr_reader :location
  def initialize(heading, coordinates)
    @heading = Direction.find(heading)
    @location = coordinates
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
  def move_forward(terrain)
    @heading.forward(@location)
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
  def forward(current_location)
    current_location[:y] = current_location[:y]+1
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
  def forward(current_location)
    current_location[:x] = current_location[:x]+1
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
  def forward(current_location)
    current_location[:x] = current_location[:x]-1
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
  def forward(current_location)
    current_location[:y] = current_location[:y]-1
  end
end

class Direction
  @@directions = {:north => North.new, :east => East.new, :west => West.new, :south => South.new}
  def self.find(heading)
    @@directions[heading]
  end
end
