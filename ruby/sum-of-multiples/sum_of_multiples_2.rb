# Program to find sum of multipliers
class SumOfMultiples
  def initialize(*args)
    @agrs = args
  end

  def to(num)
    sum = 0
    (0..num - 1).each do |i|
      sum += i if @agrs.any? { |data| i % data == 0 }
    end
    sum
  end

  def self.to(num)
    (0..num - 1).inject { |a, e| a += e if e % 3 == 0 || e % 5 == 0; a }
  end
end
