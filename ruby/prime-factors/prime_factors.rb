require 'Prime'
# Program to Find Prime Factors
class PrimeFactors
  def self.for(num)
    output = Prime.prime_division(num)
    output.inject([]) { |a, e| a.fill(e[0], a.size, e[1]); a }
  end
end
