# Anagram in Ruby
class Anagram
  def initialize(word)
    @anagram = word.downcase
    @word = @anagram.chars.sort.join
  end

  def match(list_of_anagrams)
    output = []
    list_of_anagrams.each do |val|
      output << val if @word == val.downcase.chars.sort.join && @anagram != val.downcase
    end
    output
  end
end
