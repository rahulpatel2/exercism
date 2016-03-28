# Palindrome In Ruby
class Palindromes
  def initialize(max_factor: 1, min_factor: 1)
    @max_factor = max_factor
    @min_factor = min_factor
  end

  def generate
    @factors = []
    @products = []
    (@min_factor..@max_factor).each do |i|
      (@min_factor..@max_factor).each do |j|
        insert_factors(i, j)
      end
    end
  end

  def insert_factors(i, j)
    mul = i * j
    return nil unless mul.to_s == mul.to_s.reverse
    @factors << [i, j]
    @products << mul
  end

  def largest
    generate_palidrome(@products.max)
  end

  def smallest
    generate_palidrome(@products.min)
  end

  def generate_palidrome(value)
    temp = []
    @factors.each do |arr|
      temp << arr.sort if arr[0] * arr[1] == value
    end
    Palindrome.new(value, temp.uniq)
  end

  # Sub Palindrome class
  class Palindrome
    attr_reader :value, :factors
    def initialize(value, factors)
      @value = value
      @factors = factors
    end
  end
end
