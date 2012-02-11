require "book"
require "publisher"
require "library"
require "specifications/find_all_books_by_author"

class TestLibrary < Test::Unit::TestCase
  def setup
    @prag_press = Publisher.new("Prag Press"),

    @pickaxe = Book.new("Programming Ruby 1.9", "dave thomas", @prag_press, 2010)
    @agile_web_development_with_rails = Book.new("Agile Web Development with Rails", "chad fowler", @prag_press, 2010)

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
  def test_should_be_able_to_find_all_books_by_an_author
    author = "dave thomas"
    matches = @library.find_all_matching FindAllBooksByAuthor.new(author)
    assert_includes(matches, @pickaxe)
  end
  def test_should_be_able_to_use_mocks
    mock = MiniTest::Mock.new
    mock.expect(:is_satisfied_by?, true, [@pickaxe])
    # mock.expect(:is_satisfied_by, false, [@agile_web_development_with_rails])

    matches = @library.find_all_matching(mock)
    dump(matches)
    assert_includes(matches, @pickaxe)
    # refute_includes(matches, @agile_web_development_with_rails)
  end
  def dump(matches)
    matches.each do |item|
      puts "#{item.title}"
    end
  end
end
