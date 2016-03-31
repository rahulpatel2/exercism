# Simple Cipher In Ruby
class Cipher
  attr_reader :key
  def initialize(key = nil)
    if key
      raise ArgumentError if key.empty? || key =~ /[A-Z]/ || key =~ /[0-9]/
      @key = key
    else
      @key = (0...20).map { ('a'..'z').to_a[rand(26)] }.join
    end
  end

  def encode(plaintext)
    (0...plaintext.length).each_with_object('') do |i, encode_text|
      ascii_value = ((plaintext[i].ord - 97) + (key[i].ord - 97)) % 26 + 97
      encode_text << ascii_value.chr
    end
  end

  def decode(encode_text)
    (0...encode_text.length).each_with_object('') do |i, plaintext|
      ascii_value = ((encode_text[i].ord - 97) - (key[i].ord - 97)) % 26 + 97
      plaintext << ascii_value.chr
    end
  end
end
