# Pig Latin In Ruby
class PigLatin
  def self.translate(text)
    @text = text.split(' ')
    (0...@text.length).each_with_object('') do |i, output|
      output << convert(@text[i]) + ' ' if @text.length > 1 && i != @text.length - 1
      output << convert(@text[i]) if @text.length == 1 || i == @text.length - 1
    end
  end

  def self.convert(val)
    return val + 'ay' if 'aioue'.include?(val[0]) || val.start_with?('yt', 'xr')
    pos = get_index(val)
    pos += 1 if val.start_with?('qu', 'squ')
    val.slice(pos..val.length - 1) + val.slice(0..pos - 1) + 'ay'
  end

  def self.get_index(str)
    (0...str.length).map { |i| return i if 'aioue'.include?(str[i]) }
  end
end
