require 'north'

describe North do
  before(:each) do
    @sut = North.new
  end
  describe "when at the edge of the terrain" do
    describe "when moving forward" do
      it "should just stay at the current position" do
        @location[:y].must_equal 3
      end
      before do
        terrain = fake
        terrain.stub(:is_out_of_bounds).with({:x => 0, :y => 4}).and_return(true)
        @location = {:x => 0, :y => 3}
        @sut.forward(@location, terrain)
      end
    end
  end
end
