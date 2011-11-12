require "test/unit"

# require "Book"c
class Book
  attr_reader :title
  def initialize(title)
    @title=title
  end
  def ==(other)
    other.kind_of?( Book ) && @title == other.title
  end
end

class TestBook < Test::Unit::TestCase
  def test_should_be_equal
    assert_equal(Book.new("Brain Rules for Baby"), Book.new("Brain Rules for Baby"))
  end
  def test_should_not_be_equal_because_they_are_different_types
    assert_not_equal(Book.new("blah"), Game.new("blah"))
  end
  def test_should_not_be_equal_because_they_have_different_titles
    assert_not_equal(Book.new("the game"), Book.new("DDD"))
  end
end

class Game
  attr_reader :title;
  def initialize(title)
    @title=title;
  end
end
