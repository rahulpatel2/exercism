# Program for Binary to decimal Conversion
class Binary
  VERSION = 1
  def initialize(binary_string)
    raise ArgumentError if binary_string =~ /[^0-1]/
    @binary_string = binary_string
  end

  def to_decimal
    @binary_string.to_i(2)
  end
end
