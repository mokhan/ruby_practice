require "book"
require "library"

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
