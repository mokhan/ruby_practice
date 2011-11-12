require "stack"

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
  def test_should_return_nil_when_there_is_nothing_on_the_stack
    stack=Stack.new
    assert_equal(nil, stack.pop)
  end
end
