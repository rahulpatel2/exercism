# Atbash Cipher in Ruby
class Atbash
  def self.encode(plaintext)
    plaintext = plaintext.downcase.gsub(/[^a-z1-9]/, '').scan(/.{1,5}/)
    text = plaintext.join(',').tr(',', ' ')
    plain = 'abcdefghijklmnopqrstuvwxyz'
    (0...text.length).each_with_object('') do |i, output|
      pos = 25 - plain.index(text[i]).to_i
      plain.index(text[i]).nil? ? output << text[i] : output << plain[pos]
    end
  end
end
