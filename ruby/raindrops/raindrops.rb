# Program that converts a number to String
class Raindrops
  VERSION = 1
  RAINDROP = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }.freeze
  def self.convert(num)
    out = ''
    RAINDROP.each do |key, value|
      out += value if num % key == 0
    end
    out = num.to_s if out.to_s.empty?
    out
  end
end
