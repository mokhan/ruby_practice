class Book
  attr_reader :title, :author, :publisher, :year_published
  def initialize(title, author, publisher, year_published)
    @title=title
    @author=author
    @publisher=publisher
    @year_published = year_published
  end
  def is_titled?(title)
    @title == title
  end
  def ==(other)
    other.kind_of?( Book ) && @title == other.title && @author == other.author && @publisher == other.publisher && @year_published == other.year_published
  end
end
