# Program to Difference Of Squares
class Squares
  VERSION = 2
  def initialize(num)
    @num = num
  end

  def square_of_sum
    sum = 0
    (1..@num).each do |i|
      sum += i
    end
    sum**2
  end

  def sum_of_squares
    sq = 0
    (1..@num).each do |i|
      sq += i * i
    end
    sq
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
