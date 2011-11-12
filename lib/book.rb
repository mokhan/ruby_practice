class Book
  attr_reader :title
  def initialize(title, author, publisher, year_published)
    @title=title
  end
  def is_titled?(title)
    @title == title
  end
  def ==(other)
    other.kind_of?( Book ) && @title == other.title
  end
end
