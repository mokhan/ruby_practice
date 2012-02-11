require 'rover'

describe Rover do
  before do
    @sut = Rover.new
  end

  describe "when facing north" do
    before do
      @sut.heading= :north
    end
    describe "when turning right" do
      it "should face east" do
        @sut.turn_right
        @sut.heading.must_equal :east
      end
    end
    describe "when turning left" do
      it "should face west" do
        @sut.turn_left
        @sut.heading.must_equal :west
      end
    end
  end

  describe "when facing south" do
    before do
      @sut.heading= :south
    end
    describe "when turning right" do
      it "should face west" do
        @sut.turn_right
        @sut.heading.must_equal :west
      end
    end
    describe "when turning left" do
      it "should face east" do
        @sut.turn_left
        @sut.heading.must_equal :east
      end
    end
  end

end
