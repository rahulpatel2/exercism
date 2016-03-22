# Program to Find Prime Factors
class PrimeFactors
  def self.for(num)
    output = []
    return output if num == 1
    (2..num).each do |i|
      if num % i == 0
        output << i
        num = num.div(i)
        redo
      end
    end
    output
  end
end
