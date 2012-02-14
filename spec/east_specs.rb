require 'east'

describe East do
  before(:each) do
    @sut = East.new
  end
    describe "when moving forward" do
      it "should move to the next position" do
        @location[:x].must_equal 1
      end
      before do
        @location = {:x => 0, :y => 0}
        @sut.forward(@location)
      end
    end
end
