# BinarySearch Algorithm in Ruby
class BinarySearch
  attr_accessor :list
  def initialize(list)
    @list = list
    raise ArgumentError if @list != @list.sort
  end

  def middle
    @list.length / 2
  end

  def search_for(num)
    left = 0
    right = @list.length - 1
    while left < right
      mid = (left + right) / 2
      left = mid + 1 if num > @list[mid]
      right = mid - 1 if num < @list[mid]
      return mid if num == @list[mid]
    end
    raise RuntimeError
  end
end
