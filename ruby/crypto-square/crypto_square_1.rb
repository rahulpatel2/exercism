# Crypto Square in Ruby
class Crypto
  def initialize(message)
    @message = message.downcase
  end

  def normalize_plaintext
    @message.gsub!(/\W/, '')
  end

  def size
    normalize_plaintext
    Math.sqrt(@message.length).ceil
  end

  def plaintext_segments
    normalize_plaintext
    @message.scan(/.{1,#{size}}/)
  end

  def ciphertext
    output = ''
    (0...size).each do |i|
      plaintext_segments.each do |segment|
        output << segment[i] unless segment[i].nil?
      end
    end
    output
  end

  def normalize_ciphertext
    output = ''
    (0...size).each do |i|
      plaintext_segments.each do |segment|
        output << segment[i] unless segment[i].nil?
      end
      output << ' ' unless i == size - 1
    end
    output
  end
end
