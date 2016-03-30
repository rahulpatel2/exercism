# Series for Largest Product in Ruby
class Series
  VERSION = 1
  def initialize(series)
    raise ArgumentError if series =~ /[^0-9]/
    @series = series.split('').map(&:to_i)
  end

  def largest_product(num)
    raise ArgumentError if num > @series.length || num == -1
    return 1 if num == 0
    largest = 0
    len = @series.length - num
    (0..len).each do |i|
      temp = @series[i, num].inject(:*)
      largest = temp if temp > largest
    end
    largest
  end
end
