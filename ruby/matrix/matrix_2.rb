# Matrix in Ruby
class Matrix
  attr_accessor :rows, :columns
  def initialize(matrix_string)
    @matrix_array = matrix_string.split(/\n/)
    @rows = rows
    @columns = @rows.transpose
  end

  def rows
    temp = []
    @matrix_array.each do |val|
      temp << val.split(' ').map(&:to_i)
    end
    temp
  end
end
