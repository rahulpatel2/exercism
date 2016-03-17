# Program to DAN TO RNA Conversion
class Complement
  VERSION = 3
  def self.of_dna(rna)
    rna_hash = Hash['G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U']
    (0..rna.length - 1).each do |i|
      raise ArgumentError unless rna_hash.key? rna[i]
      rna[i] = rna_hash[rna[i]]
    end
    rna
  end
end
