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
