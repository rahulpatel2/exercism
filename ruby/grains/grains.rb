# Program to Find No OF Grains
class Grains
  def self.square(num)
    2**(num - 1)
  end

  def self.total
    sum = 0
    (0..63).each do |i|
      sum += 2**i
    end
    sum
  end
end
