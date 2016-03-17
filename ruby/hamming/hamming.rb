# Program to calculate the Hamming difference between two DNA strands
class Hamming
  VERSION = 1
  def self.compute(first_dna, second_dna)
    raise ArgumentError unless first_dna.length == second_dna.length
    count = 0
    (0..first_dna.length - 1).each do |i|
      count += 1 unless first_dna[i] == second_dna[i]
    end
    count
  end
end
