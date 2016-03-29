# Lunch In Ruby
class Luhn
  def initialize(num)
    @number = num.to_s
    @reverse_number = @number.reverse
  end

  def addends
    output = []
    @reverse_number.each_char.with_index do |char, index|
      if index.odd?
        temp = char.to_i * 2
        temp -= 9 if temp >= 10
        output << temp
      else
        output << char.to_i
      end
    end
    output.reverse
  end

  def checksum
    addends.inject(0) { |a, e| a + e }
  end

  def valid?
    0 == checksum % 10
  end

  def self.create(num)
    num *= 10
    return num if new(num).valid?
    num + (10 - new(num).checksum % 10)
  end
end
