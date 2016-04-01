class OCR

  DIGITS = [
    [" _ ", "   ", " _ ", " _ ", "   ", " _ ", " _ ", " _ ", " _ ", " _ "],
    ["| |", "  |", " _|", " _|", "|_|", "|_ ", "|_ ", "  |", "|_|", "|_|"],
    ["|_|", "  |", "|_ ", " _|", "  |", " _|", "|_|", "  |", "|_|", " _|"]
  ]

  def initialize(text)
    @text = text
  end

  def convert
    digits = []
    digit_array = @text.split(/\n+/)
    (0...digit_array.length - 1).each do |index|
      digits << digit_array[index].scan(/.{3}/)
    end
    get_digit(digits) 
    #digit_array
  end

  def get_digit(digits)
    len = digits[0].length
    decimal = []
    (0...len).each do |j|
        number = get_index(digits[0][j], digits[1][j], digits[2][j])
        decimal  << number
    end
    decimal.join
  end


  def get_index(first, second, third)
    (0..9).each do |i|
      return i if first == DIGITS[0][i] && second == DIGITS[1][i] && third == DIGITS[2][i] 
    end
    '?'
  end
end