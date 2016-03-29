# Allergies In Ruby
class Allergies

  def initialize(size)
    @size = size
  end

  def score
    { 1 => 'eggs', 2 => 'peanuts', 4 =>'shellfish', 8 =>'strawberries', 16 => 'tomatoes' , 
      32 => 'chocolate', 64 => 'pollen', 128 =>'cats' }
  end

  def allergic_to?(item)
    true if score.key(item)
  end

end