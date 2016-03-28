# Pig Latin In Ruby
class PigLatin
  def self.translate(text)
    @text = text.split(' ')
    @vowels = %w(a i o u e)
    output = ''
    (0...@text.length).each do |i|
      output << convert(@text[i]) + ' ' if @text.length > 1 && i != @text.length - 1
      output << convert(@text[i]) if @text.length == 1 || i == @text.length - 1
    end
    output
  end

  def self.convert(val)
    return val + 'ay' if @vowels.include?(val[0]) || val.start_with?('yt', 'xr')
    pos = get_index(val)
    pos += 1 if val.start_with?('qu', 'squ')
    val.slice(pos..val.length - 1) + val.slice(0..pos - 1) + 'ay'
  end

  def self.get_index(str)
    (0...str.length).each do |i|
      return i if @vowels.include?(str[i])
    end
  end
end
