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
