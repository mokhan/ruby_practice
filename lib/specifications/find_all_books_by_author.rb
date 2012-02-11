class FindAllBooksByAuthor
  def initialize(author)
    @author = author
  end
  def is_satisfied_by?(book)
    book.author == @author
  end
end
