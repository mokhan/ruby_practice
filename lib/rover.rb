class Rover
  attr_reader :location
  def initialize(heading, coordinates)
    @heading = heading
    @location = coordinates
  end
  def heading
    @heading.class.name.downcase.to_sym
  end
  def turn_right
    @heading = @heading.turn_right
  end
  def turn_left
    @heading = @heading.turn_left
  end
  def move_forward(terrain)
    @heading.forward(@location, terrain)
  end
end

class North
  def turn_right
    East.new
  end
  def turn_left
    West.new
  end
  def forward(current_location, terrain)
    current_location[:y] = current_location[:y]+1
  end
end
class East
  def turn_right
    South.new
  end
  def turn_left
    North.new
  end
  def forward(current_location, terrain)
    current_location[:x] = current_location[:x]+1
  end
end
class West
  def turn_right
    North.new
  end
  def turn_left
    South.new
  end
  def forward(current_location, terrain)
    current_location[:x] = current_location[:x]-1
  end
end
class South
  def turn_right
    West.new
  end
  def turn_left
    East.new
  end
  def forward(current_location, terrain)
    current_location[:y] = current_location[:y]-1
  end
end
