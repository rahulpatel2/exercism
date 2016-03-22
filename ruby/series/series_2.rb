# Program From a string to digits
class Series
  def initialize(number_string)
    @number_string = number_string
  end

  def slices(size)
    raise ArgumentError if @number_string.length < size
    (0..@number_string.length - size).inject([]) { |a, e| a << get_inner_siles(size, e); a }
  end

  def get_inner_siles(size, length)
    (length..length + size - 1).inject([]) { |a, e| a << @number_string[e].to_i; a }
  end
end
