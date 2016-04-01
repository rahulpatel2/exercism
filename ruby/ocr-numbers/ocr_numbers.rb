# OCR Implementation In Ruby
class OCR
  DIGITS = [
    [' _ ', '   ', ' _ ', ' _ ', '   ', ' _ ', ' _ ', ' _ ', ' _ ', ' _ '],
    ['| |', '  |', ' _|', ' _|', '|_|', '|_ ', '|_ ', '  |', '|_|', '|_|'],
    ['|_|', '  |', '|_ ', ' _|', '  |', ' _|', '|_|', '  |', '|_|', ' _|']
  ].freeze

  def initialize(text)
    @text = text
  end

  def convert
    if @text.lines.count > 4
      number_for_multilines
    else
      digit_array = @text.split(/\n+/)
      get_number(digit_array)
    end
  end

  def number_for_multilines
    decimal = []
    generate_lines(@text.lines).each do |line|
      digit_array = line.split(/\n+/)
      decimal << get_number(digit_array)
    end
    decimal.join(',')
  end

  def get_number(digit_array)
    digits = []
    (0...digit_array.length - 1).each do |index|
      digits << digit_array[index].scan(/.{3}/)
    end
    get_digit(digits)
  end

  def get_digit(digits)
    length = digits[0].length
    (0...length).each_with_object([]) do |j, decimal|
      number = get_index(digits[0][j], digits[1][j], digits[2][j])
      decimal << number
    end.join
  end

  def get_index(first, second, third)
    (0..9).each do |i|
      return i if first == DIGITS[0][i] && second == DIGITS[1][i] && third == DIGITS[2][i]
    end
    '?'
  end

  def generate_lines(text)
    output = []
    text.each_slice(4) do |group|
      output << group.join
    end
    output
  end
end
