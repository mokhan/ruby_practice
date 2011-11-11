require "test/unit"

# require "stack"
class Stack
  def initialize
    @items = []
  end
  def push(item)
    @items << item
  end
  def pop
    @items.delete_at(-1)
  end
  def total_items
    @items.length
  end
end

class StackTests < Test::Unit::TestCase
  def test_math
    assert_equal(2, 1+1)
  end
  def test_assertions
    # puts self.methods
  end
  def test_should_be_able_to_push_items_onto_the_stack
    stack = Stack.new
    stack.push "hello"
    assert_equal(1, stack.total_items)
    stack.push "yo"
    assert_equal(2, stack.total_items)
  end
  def test_should_be_able_to_pop_the_last_item_off_of_the_stack
    stack=Stack.new
    stack.push "hello"
    stack.push "goodbye"
    assert_equal("goodbye", stack.pop)
  end
  def test_should_remove_the_last_item_popped_off_of_the_stack
    stack=Stack.new
    stack.push "hello"
    stack.push "goodbye"
    assert_equal("goodbye", stack.pop)
    assert_equal(1, stack.total_items)
    assert_equal("hello", stack.pop)
    assert_equal(0, stack.total_items)
  end
end
