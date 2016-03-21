# Progranm Food chain
class FoodChain
  VERSION = 2
  def self.song
    lyrics = []
    lyrics << "I know an old lady who swallowed a fly.\n"
    lyrics << "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
    foods = ['spider', 'bird', 'cat', 'dog', 'goat', 'cow']
    second = [
      "It wriggled and jiggled and tickled inside her.\n",
      "How absurd to swallow a bird!\n",
      "Imagine that, to swallow a cat!\n",
      "What a hog, to swallow a dog!\n",
      "Just opened her throat and swallowed a goat!\n",
      "I don't know how she swallowed a cow!\n"
    ]
    (0..5).each do |i|
      lyrics << "I know an old lady who swallowed a #{foods[i]}.\n"
      lyrics << second[i]
      r = (i..2)
      r.first.downto(r.last).each do |j|
        lyrics << "She swallowed the #{foods[j]} to catch the #{foods[j - 1]}.\n"
      end
      if i != 0
        lyrics << "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n"
      end
      lyrics << "She swallowed the spider to catch the fly.\n"
      lyrics << "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
    end
    lyrics << "I know an old lady who swallowed a horse.\n"
    lyrics << "She's dead, of course!\n"
    lyrics.join
  end
end
