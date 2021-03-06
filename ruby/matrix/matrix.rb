# Matrix in Ruby
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
end
