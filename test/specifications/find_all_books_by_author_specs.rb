require 'specifications/find_all_books_by_author'

describe FindAllBooksByAuthor do
  before do
    @author = 'blah'
    @book = fake
    @book.stub(:author).and_return(@author)
    @sut = FindAllBooksByAuthor.new(@author)
  end
  describe "when the book is by the author we are looking for" do
    it "should return true" do
      @result.must_equal true
    end
    before do
      @result = @sut.is_satisfied_by?(@book)
    end
  end
end
