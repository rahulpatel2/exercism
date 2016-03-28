# Proverb in Ruby
class Proverb
  def initialize(*args, qualifier:nil)
    @list = args
    @qualifier = qualifier
  end

  def to_s
    output = []
    (0...@list.length - 1).each do |i|
      output << "For want of a #{@list[i]} the #{@list[i + 1]} was lost.\n"
    end
    if @qualifier.nil?
      output << "And all for the want of a #{@list[0]}."
    else
      output << "And all for the want of a #{@qualifier} #{@list[0]}."
    end
    output.join
  end
end
