# Program From a string to digits
class Series
  def initialize(number_string)
    @number_string = number_string
  end

  def slices(size)
    raise ArgumentError if @number_string.length < size
    (0..@number_string.length - size).each_with_object([]) do |value, ouput|
      ouput << get_inner_siles(size, value)
    end
  end

  def get_inner_siles(size, length)
    (length..length + size - 1).each_with_object([]) do |value, ouput|
      ouput << @number_string[value].to_i
    end
  end
end
