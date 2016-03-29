# Kinner Garden in Ruby
class Garden
  attr_accessor :alice, :bob, :charlie, :david, :eve, :fred,
                :ginny, :harriet, :ileana, :joseph, :kincaid, :larry
  def initialize(plants, data = nil)
    @data = data
    @plants = plants.split(/\n/)
    @first_row = @plants[0].split('')
    @second_row = @plants[1].split('')
    hash = { 'R' => :radishes, 'C' => :clover, 'G' => :grass, 'V' => :violets }
    (0...@first_row.length).each do |i|
      @first_row[i] = hash[@first_row[i]]
      @second_row[i] = hash[@second_row[i]]
    end
    @alice = result(students.index('alice') * 2)
    @bob = result(students.index('bob') * 2)
    @charlie = result(students.index('charlie') * 2)
    @david = result(students.index('david') * 2)

    @eve = result(students.index('eve') * 2)
    @fred = result(students.index('fred') * 2)
    @ginny = result(students.index('ginny') * 2)
    @harriet = result(students.index('harriet') * 2)

    @ileana = result(students.index('ileana') * 2)
    @joseph = result(students.index('joseph') * 2)
    @kincaid = result(students.index('kincaid') * 2)
    @larry = result(students.index('larry') * 2)

  end

  def result(i)
    [@first_row[i], @first_row[i + 1], @second_row[i], @second_row[i + 1]]
  end

  def patricia
    result(@data.sort.index('Patricia') * 2)
  end

  def students
    %w(alice bob charlie david eve fred
       ginny harriet ileana joseph kincaid larry)
  end
end
