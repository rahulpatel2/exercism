# Program to check a yeap year
class Year
  VERSION = 1
  def self.leap?(year)
    if year % 400 == 0
      'Yes, #{year} is a leap year'
    elsif year % 4 == 0 && year % 100 != 0
      'Yes, #{year} is a leap year'
    end
  end
end
