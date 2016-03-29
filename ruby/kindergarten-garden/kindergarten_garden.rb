# Kinner Garden in Ruby
class Garden
  STUDENT_DATA = %w(alice bob charlie david eve fred
                    ginny harriet ileana joseph kincaid larry).freeze
  PLANTS = { 'R' => :radishes, 'C' => :clover,
             'G' => :grass, 'V' => :violets }.freeze
  attr_reader :students

  def initialize(plants, students = STUDENT_DATA)
    @students = students.sort
    @plants = plants.split(/\n/)
    @first_row = @plants[0].split('')
    @second_row = @plants[1].split('')
    (0...@first_row.length).each do |i|
      @first_row[i] = PLANTS[@first_row[i]]
      @second_row[i] = PLANTS[@second_row[i]]
    end
  end

  def result(i)
    [@first_row[i], @first_row[i + 1], @second_row[i], @second_row[i + 1]]
  end

  def method_missing(name)
    name = name.to_s
    result(@students.map!(&:downcase).index(name) * 2)
  end
end
