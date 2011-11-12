require "Book"
class Publisher
  
  def initialize(name)
    @name = name
  end
end

class TestBook < Test::Unit::TestCase
  def setup
    @publisher = Publisher.new("Pear press");
  end
  def test_should_be_equal
    assert_equal(Book.new("Brain Rules for Baby", "John Medina", @publisher, 2010), Book.new("Brain Rules for Baby", "John Medina", @publisher, 2010))
  end
  def test_should_not_be_equal_because_they_are_different_types
    assert_not_equal(Book.new("blah", "anonymous", @publisher, 2011), Game.new("blah", "?", @publisher, 2010))
  end
  def test_should_not_be_equal_because_they_have_different_titles
    assert_not_equal(Book.new("the game", "neil strauss", @publisher, 2001), Book.new("DDD", "eric evans", @publisher, 2005))
  end
end

describe Book do 
  describe "when testing equality" do 
    def setup
      @publisher = Publisher.new("Pear press");
      @book = Book.new("Brain Rules for Baby", "John Medina", @publisher, 2010)
    end
    it "should be equal when it's the same instance" do 
      assert_equal(@book, @book)
    end
    it "should be equal when they are the same book" do 
      assert_equal(@book, Book.new("Brain Rules for Baby", "John Medina", @publisher, 2010))
    end
    it "should not be equal when they are different books" do 
      refute_equal(@book, Book.new("Brain Rules for Baby", "some other guy", @publisher, 2009))
    end
  end
end

class Game
  attr_reader :title;
  def initialize(title, author, publisher, year)
    @title=title
    @publisher = publisher
    @year =year
  end
end
