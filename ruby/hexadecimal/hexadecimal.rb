# Hexadecimal to Decimal Conversion
class Hexadecimal
  def initialize(hexadecimal_number)
    @dec_str = hexadecimal_number.reverse!
  end

  def to_decimal
    return 0 if @dec_str =~ /[^abcdef0-9]/
    (0...@dec_str.length).inject(0) do |decimal, i|
      num = hex_table[@dec_str[i]].to_i if hex_table.key?(@dec_str[i])
      num = @dec_str[i].to_i unless hex_table.key?(@dec_str[i])
      decimal + num * (16**i)
    end
  end

  def hex_table
    { 'a' => 10, 'b' => 11, 'c' => 12,
      'd' => 13, 'e' => 14, 'f' => 15 }
  end
end
