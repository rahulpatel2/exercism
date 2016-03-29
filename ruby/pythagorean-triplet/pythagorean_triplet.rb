# Pythagorean Triplet in Ruby
class Triplet
  def initialize(*arg)
    @sides = arg.sort
  end

  def sum
    @sides.inject(:+)
  end

  def product
    @sides.inject(:*)
  end

  def pythagorean?
    @sides[2]**2 == (@sides[0]**2 + @sides[1]**2)
  end

  def self.where(input)
    max_factor = input[:max_factor]
    min_factor = 1
    min_factor = input[:min_factor] unless input[:min_factor].nil?
    generated_array = (min_factor..max_factor).to_a
    generated_array.combination(3).each_with_object([]) do |array, triplets|
      triplet_object = new(*array)
      sum_condition = (triplet_object.sum == input[:sum] || input[:sum].nil?)
      cond = triplet_object.pythagorean? && sum_condition
      triplets << triplet_object if cond
    end
  end
end
