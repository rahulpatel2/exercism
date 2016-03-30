# Custom Set In Ruby
class CustomSet
  attr_reader :set
  def initialize(*list)
    @set = [] if list[0].nil?
    @set = list[0].to_a if list[0].class == Range
    @set = list[0].uniq.sort if list[0].class != Range && !list[0].nil?
  end

  def ==(other)
    set.eql?(other.set)
  end

  def delete(value)
    CustomSet.new(set - [value])
  end

  def difference(other)
    CustomSet.new(set - other.set)
  end

  def disjoint?(other)
    diff = set & other.set
    diff.empty?
  end

  def empty
    CustomSet.new
  end

  def intersection(other)
    CustomSet.new(set & other.set)
  end

  def member?(num)
    index = set.index(num)
    return true if !index.nil? && num.class == set[index].class
    nil
  end

  def put(value)
    set << value
    CustomSet.new(set)
  end

  def size
    set.length
  end

  def subset?(other)
    set & other.set == other.set
  end

  def to_a
    set
  end

  def sort
    set.sort
  end

  def union(other)
    CustomSet.new(set | other.set)
  end
end
