require 'specifications/find_all_books_by_author'

describe FindAllBooksByAuthor do
  before do
    @author = 'blah'
    @book = fake
    @sut = FindAllBooksByAuthor.new(@author)
  end
  describe "when the book is by the author we are looking for" do
    it "should return true" do
      @result.must_equal true
    end
    before do
      @book.stub(:author).and_return(@author)
      @result = @sut.is_satisfied_by?(@book)
    end
  end
  describe "when the book is by another author" do
    it "should return false" do
      @result.must_equal false
    end
    before do
      @book.stub(:author).and_return('another guy')
      @result = @sut.is_satisfied_by? @book
    end
  end
end
