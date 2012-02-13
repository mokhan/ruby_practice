class East
  def turn_right
    South.new
  end
  def turn_left
    North.new
  end
  def forward(location, terrain)
    unless terrain.is_out_of_bounds( {:x => location[:x]+1, :y => location[:y]})
      location[:x] = location[:x]+1
    end
  end
end
