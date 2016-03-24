# Program to Convert a long phrase to its acronym
class Acronym
  VERSION = 1
  def self.abbreviate(given)
    acronym = given.gsub(/([a-z])(?=[A-Z])/, ' ').tr('-', ' ')
    acronym.split.map(&:chr).join.upcase
  end
end
