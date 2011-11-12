class Library
  def initialize
    @books = []
  end
  def add(book)
    @books << book
  end
  def contains(title)
    @books.find { |book| book.is_titled?(title) } != nil
  end
end
