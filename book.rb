class Book
  attr_reader :title
  def initialize(title)
    @title=title
  end
  def ==(other)
    other.kind_of?( Book ) && @title == other.title
  end
end
