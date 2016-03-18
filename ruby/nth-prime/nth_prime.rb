# Program to Find nth Prime
class Prime
  def prime?(n)
    (2..n / 2).none? { |i| n % i == 0 }
  end

  def nth(n)
    raise ArgumentError if n == 0
    prime = []
    (2..104_743).each do |i|
      prime << i if prime?(i)
    end
    prime[n - 1]
  end
end
