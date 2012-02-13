require 'east'

describe East do
  before(:each) do
    @sut = East.new
  end
  describe "when at the edge of the terrain" do
    describe "when moving forward" do
      it "should just stay at the current position" do
        @location[:x].must_equal 0
      end
      before do
        terrain = fake
        terrain.stub(:is_out_of_bounds).with({:x => -1, :y => 0}).and_return(true)
        @location = {:x => 0, :y => 0}
        @sut.forward(@location, terrain)
      end
    end
  end
end
