# Linked List In Ruby
class Deque
  def initialize
    @que = []
  end

  def push(value)
    @que << value
  end

  def pop
    @que.pop
  end

  def shift
    @que.shift
  end

  def unshift(value)
    @que.unshift(value)
  end
end
