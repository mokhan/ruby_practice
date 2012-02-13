require 'terrain'

describe Terrain do
  before do
    @sut = Terrain.new({:x => 3, :y => 3})
  end
  describe "when moving forward" do
    describe "when the next position is to far east" do
      it "should not let you move forward" do
        @location[:x].must_equal 3
        @location[:y].must_equal 0
      end
      before do
        @heading = fake
        @location = {:x => 3, :y => 0}
        @heading.stub(:forward).with(@location).and_return({:x => 4, :y => 0})
        @sut.move_forward(@heading, @location)
      end
    end

    describe "when the next position is to far west" do
      it "should not let you move forward" do
        @location[:x].must_equal 0
        @location[:y].must_equal 0
      end
      before do
        @heading = fake
        @location = {:x => 0, :y => 0}
        @heading.stub(:forward).with(@location).and_return({:x => -1, :y => 0})
        @sut.move_forward(@heading, @location)
      end
    end

    describe "when the next position is to far north" do
      it "should not let you move forward" do
        @location[:x].must_equal 0
        @location[:y].must_equal 3
      end
      before do
        @heading = fake
        @location = {:x => 0, :y => 3}
        @heading.stub(:forward).with(@location).and_return({:x => 0, :y => 4})
        @sut.move_forward(@heading, @location)
      end
    end

    describe "when the next position is to far south" do
      it "should not let you move forward" do
        @location[:x].must_equal 0
        @location[:y].must_equal 0
      end
      before do
        @heading = fake
        @location = {:x => 0, :y => 0}
        @heading.stub(:forward).with(@location).and_return({:x => 0, :y => -1})
        @sut.move_forward(@heading, @location)
      end
    end

    describe "when the next position is just fine" do
      it "should move position forward" do
        @location[:x].must_equal 1
        @location[:y].must_equal 1
      end
      before do
        @heading = fake
        @location = {:x => 0, :y => 0}
        @heading.stub(:forward).with(@location).and_return({:x => 1, :y => 1})
        @sut.move_forward(@heading, @location)
      end

    end

  end
end
