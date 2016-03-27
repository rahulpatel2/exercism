class Palindromes
  def initialize(max_factor: 1, min_factor: 1)
    @max_factor , @min_factor = max_factor, min_factor
  end

  def generate
    @factors = []
    @products = []
    (@min_factor..@max_factor).each do |i|
      (@min_factor..@max_factor).each do |j|
        mul = i * j
        if mul.to_s == mul.to_s.reverse
          @factors << [i, j]
          @products << mul
        end
      end
    end
  end

  def largest
    @facotr_for_max = []
    @factors.each do |arr|
       @facotr_for_max << arr.sort if arr[0] * arr[1] == @products.max
    end
    Palindrome.new(@products.max,@facotr_for_max.uniq)
  end

 def smallest
    @facotr_for_min = []
    @factors.each do |arr|
       @facotr_for_min << arr.sort if arr[0] * arr[1] == @products.min
    end
    Palindrome.new(@products.min,@facotr_for_min.uniq)
  end

  class Palindrome
    attr_reader :value, :factors
    def initialize(value, factors)
      @value, @factors = value, factors
    end
  end
end