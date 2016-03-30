# CircularBuffer in Ruby
class CircularBuffer
  def initialize(size)
    @list = []
    @size = size
  end

  def write(value)
    raise BufferFullException if @size == @list.length
    @list.unshift(value)
  end

  def write!(value)
    read if @size == @list.length
    write(value)
  end

  def read
    raise BufferEmptyException if @list.empty?
    @list.pop
  end

  def clear
    @list = []
  end

  class BufferEmptyException < Exception
  end
  class BufferFullException < Exception
  end
end
