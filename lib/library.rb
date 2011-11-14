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
  def find_all_matching(criteria)
    @books.find_all {|book| criteria.is_satisfied_by(book) }
  end
end
