require 'south'

describe South do
  before do
    @sut = South.new
  end
  describe "when driving forward" do
    describe "when it is ok to move forward" do
      it "should move forward" do
        @location[:y].must_equal 0
      end
      before do
        @location = {:x => 0, :y => 1}
        @sut.forward(@location)
      end
    end
  end
end
