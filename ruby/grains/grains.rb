# Program to Find No OF Grains
class Grains
  def self.square(num)
    2**(num - 1)
  end

  def self.total
    2**64 - 1
  end
end
