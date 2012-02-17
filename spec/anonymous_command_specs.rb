require "anonymous_command"

describe AnonymousCommand do
  describe "when run" do
    it "should run the block" do
      assert_equal true, @called
    end
    before(:each) do
      #block = lambda { @called = true  }
      block = Proc.new { @called = true }
      @called = false
      @sut = AnonymousCommand.new(block)
      @sut.run
    end
  end
end
