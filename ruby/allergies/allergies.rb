# Allergies In Ruby
class Allergies
  def initialize(size)
    @size = size
  end

  def score
    { 1 => 'eggs', 2 => 'peanuts', 4 => 'shellfish', 8 => 'strawberries',
      16 => 'tomatoes', 32 => 'chocolate', 64 => 'pollen', 128 => 'cats' }
  end

  def allergic_to?(item)
    @size & score.key(item) > 0 ? true : false
  end

  def list
    score.each_with_object([]) do |(key, value), output|
      output << value if @size & key > 0
    end
  end
end
