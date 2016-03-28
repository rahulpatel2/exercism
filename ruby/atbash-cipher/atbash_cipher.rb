# Atbash Cipher in Ruby
class Atbash
  def self.encode(plaintext)
    plaintext = plaintext.downcase.gsub(/[^a-z1-9]/, '').scan(/.{1,5}/)
    plaintext_string = plaintext.join(',').tr(',', ' ')
    encode_plaintext(plaintext_string)
  end

  def self.encode_plaintext(plaintext_string)
    output = ''
    plain = 'abcdefghijklmnopqrstuvwxyz'
    plaintext_string.each_char do |char|
      plain.index(char).nil? ? output << char : output << plain[25 - plain.index(char)]
    end
    output
  end
end
