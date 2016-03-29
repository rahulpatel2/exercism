# Node class In Ruby
class Element
  attr_accessor :datum, :next
  def initialize(data, address = nil)
    @datum = data
    @next = address
  end

  def tail?
    @next ? @next.tail? : self
  end
end
# Link List In Ruby
class SimpleLinkedList
  attr_reader :size, :head
  def initialize
    @head = nil
    @size = 0
  end

  def push(value)
    node = Element.new(value)
    node.next = @head
    @head = node
    @size += 1
  end

  def insert_at_end(value)
    current = @head
    current = current.next until current.next.nil?
    current.next = Element.new(value)
    @size += 1
  end

  def empty?
    @head.nil?
  end

  def peek
    return nil if empty?
    @head.datum
  end

  def tail
    return nil if empty?
    @head.tail.datum
  end

  def pop
    return nil if empty?
    node = @head
    @head = @head.next
    @size -= 1
    node.datum
  end

  def self.from_a(ary)
    if ary.instance_of? Array
      obj = new
      (0...ary.length).each do |i|
        obj.push(ary[i]) if i == 0
        obj.insert_at_end(ary[i]) if i > 0
      end
      obj
    else
      new
    end
  end

  def to_a
    current_node = @head
    array = []
    until current_node.nil?
      array << current_node.datum
      current_node = current_node.next
    end
    array
  end

  def reverse
    list = self
    arr = to_a
    list.size.times do
      list.pop
    end
    arr.each do |i|
      list.push(i)
    end
    list
  end
end
