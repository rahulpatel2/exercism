# Strain in Ruby
class Array
  def keep
    input = self
    input.keep_if { |value| yield value }
  end

  def discard
    input = self
    input.delete_if { |value| yield value }
  end
end
