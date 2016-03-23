# Binary Search Tree
class Bst
  attr_accessor :data, :left, :right
  def initialize(num)
    @data = num
    @left = nil
    @right = nil
  end

  def insert(value)
    if value <= @data
      insert_in_left(value)
    else
      insert_in_right(value)
    end
  end

  def insert_in_left(value)
    if left.nil?
      @left = Bst.new(value)
    else
      @left.insert(value)
    end
  end

  def insert_in_right(value)
    if right.nil?
      @right = Bst.new(value)
    else
      @right.insert(value)
    end
  end

  def each(&bck)
    left.each(&bck) unless left.nil?
    yield data
    right.each(&bck) unless right.nil?
  end
end
