# Program to check a yeap year
class Year
  VERSION = 1
  def self.leap?(year)
    'Yes, #{year} is a leap year' if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
  end
end
