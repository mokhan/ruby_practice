require "console"

describe Console do
  before do
    @input = fake
    @output = fake
    @presenter = fake
    @sut = Console.new(@input, @output)
  end
  describe "when run" do
    it "should ask for the size of the terrain" do
      @output.received(:puts).called_with("Please enter the size of the terrain:").wont_be_nil
    end
    it "should create the terrain" do
      @presenter.received(:provide_upper_right_coordinates).called_with("5 5").wont_be_nil
    end
    before do
      @input.stub(:gets).and_return("5 5")
      #@sut.run(@presenter)
    end
  end
end
