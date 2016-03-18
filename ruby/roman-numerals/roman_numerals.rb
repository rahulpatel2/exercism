# Natural NO to Roman Conversion
class Fixnum
  VERSION = 1
  def to_roman
    n = self
    roman = String.new('')
    natural_arr = Array[1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    roman_arr = Array['M', 'CM', 'D', 'CD', 'C',
                      'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']
    (0..natural_arr.length - 1).each do |i|
      roman += roman_arr[i] * (n / natural_arr[i])
      n = n % natural_arr[i]
    end
    roman
  end
end
