# Program to calculate no of word occurs
class Phrase
  VERSION = 1
  def initialize(str)
    @str = str.downcase.gsub(" '", ' ').gsub("' ", ' ').gsub(/[^0-9A-Za-z']/, ' ').split ' '
  end

  def word_count
    @str.inject(Hash.new(0)) { |a, e| a[e] += 1; a }
  end
end
