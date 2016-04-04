# TwelveDays in Ruby
class TwelveDays
  VERSION = 1
  def self.song
    @lines = { 2 => 'second', 3 => 'third', 4 => 'fourth', 5 => 'fifth',
               6 => 'sixth', 7 => 'seventh', 8 => 'eighth', 9 => 'ninth',
               10 => 'tenth', 11 => 'eleventh', 12 => 'twelfth' }.freeze

    @variations = { 2 => 'two Turtle Doves', 3 => 'three French Hens',
                    4 => 'four Calling Birds', 5 => 'five Gold Rings',
                    6 => 'six Geese-a-Laying', 7 => 'seven Swans-a-Swimming',
                    8 => 'eight Maids-a-Milking', 9 => 'nine Ladies Dancing',
                    10 => 'ten Lords-a-Leaping', 11 => 'eleven Pipers Piping',
                    12 => 'twelve Drummers Drumming' }.freeze
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
    r = row..2
    r.first.downto(r.last).each do |index|
      temp =  temp + @variations[index] + ', '
    end
    "On the #{@lines[row]} day of Christmas my true love gave to me, " + temp + 'and a Partridge in a Pear Tree.'
  end
end
