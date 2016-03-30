# Paskal Tringle In Ruby
class Triangle
  def initialize(size)
    @size = size
  end

  def rows
    return [[1]] if @size == 1
    (1...@size).each_with_object([[1]]) do |index, paskal_rows|
      paskal_rows << generate(paskal_rows[index - 1])
    end
  end

  def generate(array)
    (0...array.length - 1).each_with_object([1]) do |index, output|
      output << array[index] + array[index + 1]
    end << 1
  end
end
