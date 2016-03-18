# Natural NO to Roman Conversion
class Fixnum
  VERSION = 1
  ROMAN_HASH = { 1000 => 'M',
                 900 => 'CM',
                 500 => 'D',
                 400 => 'CD',
                 100 => 'C',
                 90 => 'XC',
                 50 => 'L',
                 40 => 'XL',
                 10 => 'X',
                 9 => 'IX',
                 5 => 'V',
                 4 => 'IV',
                 1 => 'I' }.freeze
  def to_roman
    n = self
    roman = String.new('')
    ROMAN_HASH.each do |key, value|
      roman += value * (n / key)
      n = n % key
    end
    roman
  end
end
