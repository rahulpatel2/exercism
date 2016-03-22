# Program for grade management
class School
  VERSION = 1
  def initialize
    @students = {}
  end

  def to_h
    return @students if @students.empty?
    output = {}
    @students.each do |key, value|
      output[value] = @students.reject { |k, v| v != value }.keys.sort
    end
    Hash[output.sort]
  end

  def add(name, grade)
    @students[name] = grade
  end

  def grade(grade)
    @students.reject { |k, v| v != grade }.keys.sort
  end
end
