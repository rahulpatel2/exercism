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
    sum = 0
    if @args.nil?
      (0..num - 1).each do |i|
        sum += i if i % 3 == 0 || i % 5 == 0
      end
    end
    sum
  end
end
