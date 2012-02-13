require 'rover'
require 'north'
require 'east'
require 'west'
require 'south'

describe Rover do
  def create_sut(heading, x = 0, y = 0)
    directions = {:north => North.new, :east => East.new, :west => West.new, :south => South.new}
    Rover.new directions[heading],{ :x =>x,:y => y }
  end

  describe "when facing north" do
    before do
      @sut = create_sut :north, 0, 0
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
        @sut.location.must_equal({:x => 0, :y => 1})
      end
    end
  end

  describe "when facing south" do
    before do
      @sut = create_sut :south, 0, 3
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
    describe "when driving forward" do
      before do
        @terrain = fake
        @sut.move_forward(@terrain)
      end
      it "should decrement the y coordinate on the terrain" do
        @sut.location.must_equal({:x => 0, :y => 2})
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
    describe "when driving forward" do
      before do
        @terrain = fake
        @sut.move_forward(@terrain)
      end
      it "should increment the x coordinate on the terrain" do
        @sut.location.must_equal({:x => 1, :y => 0})
      end
    end
  end

  describe "when facing west" do
    before do
      @sut = create_sut :west, 1, 0
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
    describe "when driving forward" do
      before do
        @sut.move_forward(@terrain)
      end
      it "should decrement the x coordinate on the terrain" do
        @sut.location.must_equal({:x => 0, :y => 0})
      end
    end
  end

end
