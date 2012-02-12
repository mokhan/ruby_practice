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
