# Matrix in Ruby
class Matrix
  attr_accessor :rows, :columns
  def initialize(matrix_string)
    @matrix_array = matrix_string.split(/\n/)
    @rows = rows
    @columns = columns
  end

  def rows
    temp = []
    @matrix_array.each do |val|
      temp << val.split(' ').map(&:to_i)
    end
    temp
  end

  def columns
    temp = []
    (0...@rows[0].length).each do |i|
      tmp = []
      (0...@rows.length).each do |j|
        tmp << @rows[j][i]
      end
      temp << tmp
    end
    temp
  end
end
