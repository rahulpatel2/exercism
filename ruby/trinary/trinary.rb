# Trinary to decimal
class Trinary
  def initialize(binary_string)
    @binary_string = binary_string
  end

  def to_decimal
    return 0 if @binary_string =~ /[a-z]/
    array_of_binary_nos = @binary_string.reverse!.split ''
    size = array_of_binary_nos.length - 1
    (0..size).inject(0) { |a, e| a + array_of_binary_nos[e].to_i * 3**e }
  end
end
