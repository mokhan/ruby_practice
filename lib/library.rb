class Library
  def initialize
    @books = []
  end
  def add(book)
    @books << book
  end
  def contains(title)
    @books.find { |book| book.title == title } != nil
  end
end
