# Program to Difference Of Squares
class Squares
  VERSION = 2
  attr_accessor :num
  def initialize(num)
    @num = num
  end

  def square_of_sum
    sum = num * (num + 1) / 2
    sum**2
  end

  def sum_of_squares
    sq = 0
    (1..num).each do |i|
      data = i**2
      sq += data
    end
    sq
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
