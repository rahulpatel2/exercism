require 'Prime'
# Program to Find Prime Factors
class PrimeFactors
  def self.for(num)
    Prime.prime_division(num).inject([]) { |a, e| a.fill(e[0], a.size, e[1]); a }
  end
end
