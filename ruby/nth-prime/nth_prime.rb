# Program to Find nth Prime
class Prime
  def nth(n)
    raise ArgumentError if n == 0
    prime = []
    (2..104_743).each do |j|
      prime << j if (2..j / 2).none? { |i| j % i == 0 }
    end
    prime[n - 1]
  end
end
