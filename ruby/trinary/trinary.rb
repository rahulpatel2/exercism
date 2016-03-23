# Trinary to decimal
class Trinary
  def initialize(binary_string)
    @binary_string = binary_string
  end

  def to_decimal
    return 0 if @binary_string =~ /[a-z]/
    array_of_string = @binary_string.reverse!.split ''
    sum = 0
    array_of_string.each_with_index { |val, index| sum += val.to_i * 3**index }
    sum
  end
end
