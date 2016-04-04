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

  def search_for(num, lowest = 0, highest = 0)
    highest = @list.length if highest == 0
    mid = (lowest + highest) / 2
    return mid if @list[mid] == num
    raise RuntimeError if mid == 0
    return search_for(num, lowest, mid) if @list[mid] > num
    return search_for(num, mid, highest) if @list[mid] < num
  end
end
