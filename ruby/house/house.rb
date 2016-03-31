# Hosue In Ruby
class House
  def self.recite
    song = 'This is the house that Jack built.' << "\n" << "\n"
    (1..PHRASES.length).each do |index|
      song << 'This is ' + PHRASES.take(index).reverse.join(' ') << "\n"
      song << "\n" if index != 11
    end
    song
  end
  PHRASES = [
    ['malt', 'lay in the house that Jack built.'],
    ['rat', 'ate'],
    ['cat', 'killed'],
    ['dog', 'worried'],
    ['cow with the crumpled horn', 'tossed'],
    ['maiden all forlorn', 'milked'],
    ['man all tattered and torn', 'kissed'],
    ['priest all shaven and shorn', 'married'],
    ['rooster that crowed in the morn', 'woke'],
    ['farmer sowing his corn', 'kept'],
    ['horse and the hound and the horn', 'belonged to']
  ].map { |subject, action| "the #{subject}\nthat #{action}" }
end


