class AnonymousCommand
  def initialize(block)
    @block = block
  end
  def run
    @block.call()
  end
end
