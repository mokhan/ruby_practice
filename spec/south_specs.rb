require 'south'

describe South do
  before do
    @sut = South.new
  end
  describe "when driving forward" do
    describe "when at the edge of the terrain" do
      it "should not move forward" do
        @location[:y].must_equal 1
      end
      before do
        @location = {:x => 0, :y => 1}
        @terrain = fake
        @terrain.stub(:is_out_of_bounds).with({:x => 0, :y => 0}).and_return(true);
        @sut.forward(@location, @terrain)
      end
    end
    describe "when it is ok to move forward" do
      it "should move forward" do
        @location[:y].must_equal 0
      end
      before do
        @location = {:x => 0, :y => 1}
        @terrain = fake
        @terrain.stub(:is_out_of_bounds).with({:x => 0, :y => 0}).and_return(false);
        @sut.forward(@location, @terrain)
      end
    end
  end
end
