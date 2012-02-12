class North
  def turn_right
    East.new
  end
  def turn_left
    West.new
  end
  def forward(location, terrain)
    unless terrain.is_out_of_bounds({:x =>location[:x],:y => location[:y]+1})
      location[:y] = location[:y]+1
    end
  end
end
