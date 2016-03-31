# Simple Cipher In Ruby
class Cipher
  attr_reader :key
  def initialize(key = nil)
    @key = createkey if key.nil?
    @key = key unless key.nil?
  end

  def createkey
   (0...20).map { ('a'..'z').to_a[rand(26)] }.join
  end

  def encode(plaintext)
    (0...plaintext.length).each do |i|
      shift_distance = (plaintext[i].ord - key[i].ord).abs
      shift_distance.times { plaintext[i] = plaintext[i].next }
    end 
    plaintext
  end

  def decode(encodeed_text)
    (0...encodeed_text.length).each do |i|
      shift_distance = (encodeed_text[i].ord - key[i].ord).abs
      shift_distance.times { encodeed_text[i] = encodeed_text[i].prev }
    end
    encodeed_text
  end
end

class String
  def prev
    (ord - 1).chr
  end
end