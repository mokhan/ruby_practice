require 'north'

describe North do
  before(:each) do
    @sut = North.new
  end
  describe "when moving forward" do
    it "should move to the next position" do
      @location[:y].must_equal 4
    end
    before do
      @location = {:x => 0, :y => 3}
      @sut.forward(@location)
    end
  end
end
