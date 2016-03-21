# Program for Binary to decimal Conversion
class Binary
  VERSION = 1
  def initialize(binary_string)
    raise ArgumentError if binary_string =~ /[^0-1]/
    @binary_string = binary_string.reverse!.split ''
  end

  def to_decimal
    array_of_binary_nos = @binary_string
    sum = 0
    (0..array_of_binary_nos.length - 1).each do |i|
      sum += 2**i if array_of_binary_nos[i] == '1'
    end
    sum
  end
end
