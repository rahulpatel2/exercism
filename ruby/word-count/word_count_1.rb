# Program to calculate no of word occurs
class Phrase
  VERSION = 1
  def initialize(str)
    @str = str.downcase
    @str = @str.gsub(" '", ' ').gsub("' ", ' ').gsub(/[^0-9A-Za-z']/, ' ')
  end

  def word_count
    word_array = @str.split ' '
    hash_data = Hash.new(0)
    word_array.each { |value| hash_data[value] += 1 }
    hash_data
  end
end
