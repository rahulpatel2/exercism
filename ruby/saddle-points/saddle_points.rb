# Saddle Points in Matrix in Ruby
class Matrix
  attr_accessor :rows, :columns
  def initialize(matrix_string)
    @matrix_array = matrix_string.split(/\n/)
    @rows = rows
    @columns = @rows.transpose
  end

  def rows
    @matrix_array.each_with_object([]) do |val, temp|
      temp << val.split(' ').map(&:to_i)
    end
  end

  def saddle_points
    (0...@rows.length).each_with_object([]) do |i, result|
      (0...@columns.length).each do |j|
        result << [i, j] if saddle?(i, j)
      end
    end
  end

  def saddle?(i, j)
    @rows[i][j] >= (@rows[i]).max && @rows[i][j] <= (@columns[j]).min
  end
end
