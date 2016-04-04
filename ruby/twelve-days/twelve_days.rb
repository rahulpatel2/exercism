# TwelveDays in Ruby
class TwelveDays
  VERSION = 1
  def self.song
    @variations = { 'second' => 'two Turtle Doves',
                    'third' => 'three French Hens',
                    'fourth' => 'four Calling Birds',
                    'fifth' => 'five Gold Rings',
                    'sixth' => 'six Geese-a-Laying',
                    'seventh' => 'seven Swans-a-Swimming',
                    'eighth' => 'eight Maids-a-Milking',
                    'ninth' => 'nine Ladies Dancing',
                    'tenth' => 'ten Lords-a-Leaping',
                    'eleventh' => 'eleven Pipers Piping',
                    'twelfth' => 'twelve Drummers Drumming' }.freeze
    song = 'On the first day of Christmas my true love gave to me, a Partridge in a Pear Tree.'
    song << "\n" << "\n"
    (2..12).each do |i|
      song << generate(i) << "\n" << "\n" if i != 12
      song << generate(i) << "\n" if i == 12
    end
    song
  end

  def self.generate(row)
    temp = ''
    row_numbers = @variations.keys
    r = row..2
    r.first.downto(r.last).each do |index|
      temp =  temp + @variations[row_numbers[index - 2]] + ', '
    end
    "On the #{row_numbers[row - 2]} day of Christmas my true love gave to me, " + temp + 'and a Partridge in a Pear Tree.'
  end
end
