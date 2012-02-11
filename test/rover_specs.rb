require 'rover'

describe Rover do
  before do
    sut = Rover.new
  end
  describe "when facing north" do
    describe "when turning right" do
      it "should face east" do
        sut.heading.must_equal :east
      end
      before do
        sut.heading :north
        sut.turn_right
      end
    end
  end
end
