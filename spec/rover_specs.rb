require 'rover'

describe Rover do
  def create_sut(heading)
    Rover.new heading
  end

  describe "when facing north" do
    before do
      @sut = create_sut :north
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
    describe "when driving forward" do
      before do
        @terrain = fake
        @sut.move_forward(@terrain)
      end
      it "should increment the y coordinate on the terrain" do
        @terrain.received(:move_to).called_with(0,1).wont_match nil
      end
    end
  end

  describe "when facing south" do
    before do
      @sut = create_sut :south
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

  describe "when facing east" do
    before do
      @sut = create_sut :east
    end
    describe "when turning right" do
      it "should face south" do
        @sut.turn_right
        @sut.heading.must_equal :south
      end
    end
    describe "when turning left" do
      it "should face north" do
        @sut.turn_left
        @sut.heading.must_equal :north
      end
    end
  end

  describe "when facing west" do
    before do
      @sut = create_sut :west
    end
    describe "when turning right" do
      it "should face north" do
        @sut.turn_right
        @sut.heading.must_equal :north
      end
    end
    describe "when turning left" do
      it "should face south" do
        @sut.turn_left
        @sut.heading.must_equal :south
      end
    end
  end

end
