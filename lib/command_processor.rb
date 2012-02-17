class CommandProcessor
  def initialize
    @commands = []
  end
  def add(command)
    @commands << command
  end
  def run
    @commands.each { |e| e.run  }
  end
end
