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
