# Progranm Food chain
class FoodChain
  VERSION = 2
  def self.song
    song = []
    song << "I know an old lady who swallowed a fly.\n"
    song << "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
    song << "I know an old lady who swallowed a spider.\n"
    song << "It wriggled and jiggled and tickled inside her.\n"
    song << "She swallowed the spider to catch the fly.\n"
    song << "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
    second = [
      "How absurd to swallow a bird!\n",
      "Imagine that, to swallow a cat!\n",
      "What a hog, to swallow a dog!\n",
      "Just opened her throat and swallowed a goat!\n",
      "I don't know how she swallowed a cow!\n"
    ]
    foods = ['bird', 'cat', 'dog', 'goat', 'cow']
    (0..4).each do |i|
      song << "I know an old lady who swallowed a #{foods[i]}.\n"
      song << second[i]
      r = (i..1)
      r.first.downto(r.last).each do |j|
        song << "She swallowed the #{foods[j]} to catch the #{foods[j - 1]}.\n"
      end
      song << "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n"
      song << "She swallowed the spider to catch the fly.\n"
      song << "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
    end
    song << "I know an old lady who swallowed a horse.\n"
    song << "She's dead, of course!\n"
    song.join
  end
end
