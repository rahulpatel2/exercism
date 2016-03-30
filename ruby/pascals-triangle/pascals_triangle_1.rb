# Paskal Tringle In Ruby
class Triangle
  def initialize(size)
    @size = size
  end

  def rows
    return [[1]] if @size == 1
    output = [[1]]
    (1...@size).each do |i|
      temp = [1]
      (0...output[i - 1].length - 1).each do |j|
        temp << output[i - 1][j] + output[i - 1][j + 1]
      end
      temp << 1
      output << temp
    end
    output
  end
end
