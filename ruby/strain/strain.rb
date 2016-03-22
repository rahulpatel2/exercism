# Strain in Ruby
class Array
  def keep
    self.keep_if { |value| (yield value) }
  end

  def discard
    self.delete_if { |value| (yield value) }
  end
end