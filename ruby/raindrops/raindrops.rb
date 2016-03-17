# Program that converts a number to String
class Raindrops
  VERSION = 1
  RAINDROP = Hash[3 => 'Pling', 5 => 'Plang', 7 => 'Plong']
  def self.convert(num)
    out = String.new('')
    RAINDROP.each do |key, value|
      out += value if num % key == 0
    end
    out = num.to_s if out.to_s.empty?
    out
  end
end
