# Program to Implement the accumulate operation
class Array
  def accumulate
    input = self
    input.inject([]) { |a, e| a << yield(e) }
  end
end
