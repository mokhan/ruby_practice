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
