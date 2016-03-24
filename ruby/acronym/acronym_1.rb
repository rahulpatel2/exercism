# Program to Convert a long phrase to its acronym
class Acronym
  VERSION = 1
  def self.abbreviate(given)
    acronym = given.gsub(/([a-z])(?=[A-Z])/, ' ').tr('-', ' ').split ' '
    acronym.each_with_object('') { |e, a| a << e[0] }.upcase
  end
end
