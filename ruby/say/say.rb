# Say In Ruby
class Say
  FIRST_TWENTY = {
                   19  => 'nineteen',
                   17  => 'seventeen',
                   16  => 'sixteen',
                   15  => 'fifteen',
                   14  => 'fourteen',
                   13  => 'thirteen',
                   12  => 'twelve',
                   11  => 'eleven',
                   10  => 'ten',
                   9   => 'nine',
                   8   => 'eight',
                   7   => 'seven',
                   6   => 'six',
                   5   => 'five',
                   4   => 'four',
                   3   => 'three',
                   2   => 'two',
                   1   => 'one',
                   0   => 'zero'
                 }.freeze
  TWENTY_TO_HUNDERD = {
                        90  => 'ninety',
                        80  => 'eighty',
                        70  => 'seventy',
                        60  => 'sixty',
                        50  => 'fifty',
                        40  => 'forty',
                        30  => 'thirty',
                        20  => 'twenty'
                      }.freeze
  def initialize(num)
    raise ArgumentError if num < 0 || num >= 1_000_000_000_000
    @num = num
  end

  def in_english
    say_for_large_numbers(@num)
  end

  def say_twenty_to_hundred(number)
    return TWENTY_TO_HUNDERD[number] unless TWENTY_TO_HUNDERD[number].nil?
    TWENTY_TO_HUNDERD[(number / 10) * 10] + '-' + FIRST_TWENTY[number % 10]
  end

  def say_for_large_numbers(number)
    if number < 20
      FIRST_TWENTY[number]
    elsif number >= 20 && number < 100
      say_twenty_to_hundred(number)
    elsif number >= 100 && number < 1_000
      return FIRST_TWENTY[number / 100] + ' hundred ' +
      say_for_large_numbers(number % 100) if number % 100 != 0
      FIRST_TWENTY[number / 100] + ' hundred'
    elsif number >= 1_000 && number < 1_000_000
      return say_for_large_numbers(number / 1000) + ' thousand ' +
      say_for_large_numbers(number % 1000) if number % 1000 != 0
      FIRST_TWENTY[number / 1000] + ' thousand'
    elsif number >= 1_000_000 && number < 1_000_000_000
      return say_for_large_numbers(number / 1_000_000) + ' million ' +
      say_for_large_numbers(number % 1_000_000) if number % 1_000_000 != 0
      FIRST_TWENTY[number / 1_000_000] + ' million'
    else
      return say_for_large_numbers(number / 1_000_000_000) + ' billion ' +
      say_for_large_numbers(number % 1_000_000_000) if number % 1_000_000_000 != 0
      FIRST_TWENTY[number / 1_000_000_000] + ' billion'
    end
  end
end
