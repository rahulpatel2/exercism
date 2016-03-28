# Secret Handshake in Ruby
class SecretHandshake
  def initialize(decimal)
    @decimal = decimal
    return if @decimal =~ /[^0-9]+/
    @commands_array = ['wink', 'double blink', 'close your eyes', 'jump']
    @binary_string = decimal.to_s(2).reverse.slice(0, 4)
  end

  def commands
    result = []
    return [] if @decimal =~ /[^0-9]+/
    (0...@binary_string.length).each do |i|
      result << @commands_array[i] if @binary_string[i] == '1'
    end
    return result.reverse if @decimal >= 16
    result
  end
end
