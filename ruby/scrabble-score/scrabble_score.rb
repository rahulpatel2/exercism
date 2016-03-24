# Scrabble Score in Ruby
class Scrabble
  def initialize(scrabble_string)
    @scrabble_string = scrabble_string
  end

  def letter_values
    {
      5 => %w(K),
      2 => %w(D G),
      8 => %w(J X),
      10 => %w(Q Z),
      3 => %w(B C M P),
      4 => %w(F H V W Y),
      1 => %w(A E I O U L N R S T)
    }
  end

  def score
    return 0 if @scrabble_string.nil? || @scrabble_string.empty?
    return 0 if @scrabble_string =~ /[^a-zA-Z]+/
    scrabble_string = @scrabble_string.upcase
    score = 0
    scrabble_string.each_char do |str|
      letter_values.each do |key, value|
        score += key if value.include? str
      end
    end
    score
  end

  def self.score(scrabble_string)
    new(scrabble_string).score
  end
end
