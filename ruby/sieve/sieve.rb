require 'prime'
# Program to generate List of prime no
class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    list_of_primes = []
    Prime.each(@num) do |prime|
      list_of_primes << prime
    end
    list_of_primes
  end
end
