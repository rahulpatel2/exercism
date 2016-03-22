# Program for Binary to decimal Conversion
class Binary
  VERSION = 1
  def initialize(binary_string)
    raise ArgumentError if binary_string =~ /[^0-1]/
    @binary_string = binary_string.reverse!.split ''
  end

  def to_decimal
    array_of_binary_nos = @binary_string
    (0..array_of_binary_nos.length - 1).inject(0) { |a, e| a += 2**e if array_of_binary_nos[e] == '1'; a }
  end
end
