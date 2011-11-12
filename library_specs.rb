require "test/unit"
require_relative "book"

# require "library"
class Library
  def initialize
    @books = []
  end
  def add(book)
    @books << book
  end
  def contains(title)
    # puts @books.public_methods
    found = @books.find do |book| 
      book.title == title
    end
    found != nil
    # @books.any?
  end
end

class TestLibrary < Test::Unit::TestCase
  def setup
    @pickaxe = Book.new("The Ruby Programming Language")
    @agile_web_development_with_rails = Book.new("Agile Web Development with Rails")
    @library = Library.new
    @library.add @pickaxe
    @library.add @agile_web_development_with_rails
  end
  def test_should_tell_if_a_book_was_added
    assert_equal(true, @library.contains(@pickaxe.title))
  end
  def test_should_tell_when_a_book_was_not_added
    assert_equal(false, @library.contains("little red riding hood"))
  end
end
