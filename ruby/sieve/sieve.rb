require 'prime'
# Program to generate List of prime no
class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    list_of_primes = []
    (2..@num).each do |i|
      list_of_primes << i if Prime.prime?(i)
    end
    list_of_primes
  end

end
