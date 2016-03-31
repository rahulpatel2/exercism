# Simple Cipher In Ruby
class Cipher
  attr_reader :key
  def initialize(key = nil)
    if key
      raise ArgumentError if key.empty? || key =~ /[A-Z]/ || key =~ /[0-9]/
      @key = key
    else
      @key = createkey
    end
  end

  def createkey
    (0...20).map { ('a'..'z').to_a[rand(26)] }.join
  end

  def encode(plaintext)
    encode_text = ''
    (0...plaintext.length).each do |i|
      ascii_value = ((plaintext[i].ord - 97) + (key[i % key.length].ord - 97)) % 26 + 97
      encode_text << ascii_value.chr
    end
    encode_text
  end

  def decode(encode_text)
    plaintext = ''
    (0...encode_text.length).each do |i|
      ascii_value = ((encode_text[i].ord - 97) - (key[i % key.length].ord - 97)) % 26 + 97
      plaintext << ascii_value.chr
    end
    plaintext
  end
end
