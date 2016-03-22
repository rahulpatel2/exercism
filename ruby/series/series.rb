# Program From a string to digits
class Series
  def initialize(number_string)
    @number_string = number_string
  end

  def slices(size)
    raise ArgumentError if @number_string.length < size
    output = []
    (0..@number_string.length - size).each do |i|
      temp = []
      (i..i + size - 1).each do |j|
        temp << @number_string[j].to_i
      end
      output << temp
    end
    output
  end
end
