# Program to DAN TO RNA Conversion
class Complement
  VERSION = 3
  def self.of_dna(rna)
    rna_hash = Hash['G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U']
    dna = String.new('')
    rna.each_char do |i|
      raise ArgumentError unless rna_hash.key? i
      dna += rna_hash[i]
    end
    dna
  end
end
