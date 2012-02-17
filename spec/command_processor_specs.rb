require "command_processor"

describe CommandProcessorSpecs do
  before(:each) do
    @sut = CommandProcessor.new
  end
  describe "when run" do
    it "should run each command added to the queue" do
      @first_command.received(:run).wont_be_nil
      @second_command.received(:run).wont_be_nil
    end
    before do
      @first_command = fake
      @second_command = fake
      @sut.add(@first_command)
      @sut.add(@second_command)
      @sut.run
    end
  end
end
